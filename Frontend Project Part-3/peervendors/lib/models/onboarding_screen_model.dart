class OnboardingScreenModel {
  int pageIndex;

  OnboardingScreenModel({required this.pageIndex});

  int get getIndex {
    return pageIndex;
  }

  set setIndex(int setValue) {
    pageIndex = setValue;
  }
}
