import 'package:mr_store/features/authentication/screens/login/forget.dart';
import 'package:mr_store/features/authentication/screens/login/login.dart';
import 'package:mr_store/features/authentication/screens/login/success.dart';
import 'package:mr_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:mr_store/features/authentication/screens/register/register.dart';
import 'package:mr_store/features/authentication/screens/register/success.dart';
import 'package:mr_store/features/authentication/screens/register/verify.dart';
import 'package:mr_store/features/personalization/screens/address/add_new_address.dart';
import 'package:mr_store/features/personalization/screens/address/addresses_screen.dart';
import 'package:mr_store/features/shop/screens/brand/all_brands_screen.dart';
import 'package:mr_store/features/shop/screens/brand/brand_products_screen.dart';
import 'package:mr_store/features/shop/screens/order/orders_screen.dart';
import 'package:mr_store/features/shop/screens/product/all_products_screen.dart';
import 'package:mr_store/features/shop/screens/cart/cart_screen.dart';
import 'package:mr_store/features/shop/screens/checkout/checkout_screen.dart';
import 'package:mr_store/features/shop/screens/home/home_screen.dart';
import 'package:mr_store/features/personalization/screens/profile/profile.dart';
import 'package:mr_store/features/personalization/screens/settings/settings.dart';
import 'package:mr_store/features/shop/screens/product_details/product_details_screen.dart';
import 'package:mr_store/features/shop/screens/product_reviews/product_reviews_screen.dart';
import 'package:mr_store/features/shop/screens/store/store_screen.dart';
import 'package:mr_store/features/shop/screens/sub_category/sub_categories_screen.dart';
import 'package:mr_store/features/shop/screens/wishlist/wishlist_screen.dart';
import 'package:mr_store/navigation_menu.dart';
import 'package:mr_store/core/constants/routes.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  //  Auth
  // GetPage(name: '/', page: () => const HomeScreen()),
  GetPage(name: "/", page: () => const OnBoardingScreen()),
  GetPage(name: AppRoute.login, page: () => const LoginScreen()),
  GetPage(name: AppRoute.register, page: () => const RegisterScreen()),
  GetPage(name: AppRoute.verify, page: () => const VerifyScreen()),
  GetPage(name: AppRoute.success, page: () => const SuccessScreen()),
  GetPage(
      name: AppRoute.forgetPassword, page: () => const ForgetPasswordScreen()),
  GetPage(
      name: AppRoute.successResetPassword,
      page: () => const SuccessResetPasswordScreen()),
  GetPage(name: AppRoute.navigationMenu, page: () => const NavigationMenu()),
  GetPage(name: AppRoute.home, page: () => const HomeScreen()),
  GetPage(name: AppRoute.store, page: () => const StoreScreen()),
  GetPage(name: AppRoute.settings, page: () => const SettingsScreen()),
  GetPage(name: AppRoute.profile, page: () => const ProfileScreen()),
  GetPage(
      name: AppRoute.productDetails, page: () => const ProductDetailsScreen()),
  GetPage(
      name: AppRoute.productReviews, page: () => const ProductReviewsScreen()),
  GetPage(name: AppRoute.address, page: () => const UserAddressScreen()),
  GetPage(name: AppRoute.addAddress, page: () => const AddNewAddress()),
  GetPage(name: AppRoute.cart, page: () => const CartScreen()),
  GetPage(name: AppRoute.checkout, page: () => const CheckoutScreen()),
  GetPage(name: AppRoute.wishlist, page: () => const FavoriteScreen()),
  GetPage(name: AppRoute.subCategories, page: () => const SubCategoriesScreen()),
  GetPage(name: AppRoute.allProducts, page: () => const AllProductsScreen()),
  GetPage(name: AppRoute.allBrands, page: () => const AllBrandsScreen()),
  GetPage(name: AppRoute.brandProducts, page: () => const BrandProductsScreen()),
  GetPage(name: AppRoute.orders, page: () => const OrdersScreen()),
];