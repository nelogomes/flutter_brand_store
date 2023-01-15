enum BrandType { all, men, women, kids, other }

class BrandCategory {
  final BrandType type;
  bool isSelected;
  BrandCategory(this.type, this.isSelected);
}
