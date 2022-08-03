import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parcel_it_app/src/authentication/_services/country_code_service.dart';
import 'package:parcel_it_app/src/core/_service_providers/app_service_provider.dart';
import 'package:parcel_it_app/src/core/_services/dialog_service.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';

final countryPhoneCode = StateProvider.autoDispose<String>((ref) => '+234');
final countryCode = StateProvider.autoDispose<String>((ref) => 'NG');

final phoneNumber = Provider.autoDispose.family<String, String>((ref, phoneNumber) {
  RegExp _validator = RegExp(r"^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$");
  phoneNumber = phoneNumber.startsWith('0', 0) ? phoneNumber.substring(1) : phoneNumber;
  final phoneCode = ref.watch(countryPhoneCode);
  if (!_validator.hasMatch(phoneCode + phoneNumber)) return '';
  return phoneCode + phoneNumber;
});

class PhoneAuthenticationInput extends HookConsumerWidget {
  final Function(String?) onChanged;
  final bool readOnly;
  const PhoneAuthenticationInput({required this.onChanged, this.readOnly = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('Build From Phone Input');

    final _textEditingController = useTextEditingController();
    final _phoneNumber = useValueListenable(_textEditingController).text;
    final _hasError = useState<bool>(false);
    final _dialogService = getIt<DialogService>();

    // ignore: body_might_complete_normally_nullable
    useEffect(() {
      _textEditingController.text = _phoneNumber;
      _textEditingController.selection = TextSelection.collapsed(offset: _phoneNumber.length);
    }, [_phoneNumber]);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            _dialogService.showBottomModalDialog(
              height: 0.95,
              child: _CountryCodes(onTap: _dialogService.closeBottomModalDialog),
            );
          },
          child: Container(
            height: 48,
            padding: const EdgeInsets.only(left: 18, right: 18),
            decoration: BoxDecoration(
              color: kPrimaryCardColor,
              border: Border.all(color: kPrimaryFormFieldBorderColor),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/country_flags/${ref.watch(countryCode)}.svg'),
                const SizedBox(width: 10),
                Text(ref.watch(countryPhoneCode), style: kParagraphTextStlye),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                readOnly: readOnly,
                controller: _textEditingController,
                onChanged: (_) {
                  final _phoneNumber = ref.watch(phoneNumber(_textEditingController.text));
                  if (_phoneNumber.isEmpty) {
                    _hasError.value = true;
                  } else {
                    _hasError.value = false;
                  }
                  onChanged(_phoneNumber);
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) => _hasError.value ? '' : null,
                cursorColor: kPrimaryColor,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 18, right: 18),
                  errorStyle: const TextStyle(
                    fontSize: 12,
                    height: 0,
                  ),
                  filled: true,
                  fillColor: kPrimaryCardColor,
                  hintText: '012XXXXX',
                  hintStyle: kSubtitleTextStlye.copyWith(fontSize: 16),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: kPrimaryFormFieldColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: kPrimaryFormFieldBorderColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: kPrimaryFormFieldBorderColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              AnimatedContainer(
                padding: const EdgeInsets.only(left: 8),
                duration: const Duration(microseconds: 500),
                child: Text(
                  _hasError.value ? 'Please enter a valid phone number' : '',
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

final countries = Provider.autoDispose.family<List, String>((ref, query) {
  List countries = CountryCodeService.countries;

  if (query.isNotEmpty) {
    return countries.where(
      (country) {
        final _countryName = country.name.toLowerCase();
        final _searchTerm = query.toLowerCase();
        return _countryName.contains(_searchTerm) || country.phoneCode.contains(_searchTerm);
      },
    ).toList();
  }
  return countries;
});

class _CountryCodes extends HookConsumerWidget {
  const _CountryCodes({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _textEditingController = useTextEditingController(text: '');
    final _query = useValueListenable(_textEditingController).text;
    final _countries = ref.watch(countries(_textEditingController.text));
    // ignore: body_might_complete_normally_nullable
    useEffect(() {
      _textEditingController.text = _query;
      _textEditingController.selection = TextSelection.collapsed(offset: _query.length);
    }, [_query]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 12, right: 12, bottom: 24),
          child: Text('Search Country Code', style: kHeadingTextStlye),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, bottom: 16),
          child: SizedBox(
            height: 48,
            child: TextField(
              autofocus: true,
              controller: _textEditingController,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 8),
                prefixIcon: const Icon(
                  Iconsax.search_normal_1,
                  size: 20,
                  color: kLightGreyColor,
                ),
                focusColor: kLightGreyColor,
                hintText: 'Type country name or country code',
                hintStyle: kSubtitleTextStlye,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kPrimaryFormFieldBorderColor,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kLightGreyColor,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowIndicator();
              return true;
            },
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: _countries.length,
              itemBuilder: (context, index) {
                return ListTile(
                  selectedColor: kPrimaryFormFieldColor,
                  selectedTileColor: kPrimaryFormFieldColor,
                  leading: SvgPicture.asset(
                    'assets/country_flags/${_countries[index].countryCode}.svg',
                    height: 24,
                  ),
                  title: Text(
                    _countries[index].name,
                    style: kParagraphTextStlye.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  trailing: Text(
                    '+${_countries[index].phoneCode}',
                    style: kParagraphTextStlye.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: kLightGreyColor,
                    ),
                  ),
                  onTap: () {
                    ref.watch(countryPhoneCode.notifier).state = _countries[index].phoneCode;
                    ref.watch(countryCode.notifier).state = _countries[index].countryCode;
                    onTap();
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
