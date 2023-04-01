
# VERTICAL NAV BAR (BLACK $ WHITE ◾◻️)💫

By using this package, you will be able to easily create a beautiful bottom navigation bar in flutter and use it on diffrent Os, here is the documantation about how to use it💡

🟢داکیومنت فارسی در مورد نحوه استفاده از این پکیج در ادامه آمده است🟢


![vertical_nav_bar(1)](https://user-images.githubusercontent.com/86960501/229307972-f5b22c45-dde9-4ad0-a0e4-83b06e28bd3b.gif)






## How to use⁉️

#### set a bottom navigation bar in Scaffold: ✅

```
VerticalNavBar(
selectedIndex: currentRoute,
height:  MediaQuery.of(context).size.height,
width:  MediaQuery.of(context).size.width *  25  /  100,
onItemSelected: (value) {
setState(() {
_navigateRoutes(value);
});
},
items:  const [
VerticalNavBarItem(
title:  "H O M E",
),
VerticalNavBarItem(
title:  "S E T T I N G S",
),
VerticalNavBarItem(
title:  "P R O F I L E",
),
VerticalNavBarItem(
title:  " S E A R C H",),],)
```

The arguments needed for (ClassicButtomNavBar) 🟢

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `backgroundColor` | `Color` | **Optional**. color of container |


| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `selectedIndex`      | `int` | **Optional**. index of selected page |

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `height`      | `double` | **Optional**. height of the classic bottom nav bar|

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `width`      | `double` | **Optional**. width of the classic bottom nav bar : |

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `borderRadius`      | `double` | **Optional**. the radius of corners of bottom nav bar|

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `items`      | `List<VerticalNavBar>` | **required**. list of items in bottom nav bar |

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `onItemSelected`      | `callbackFunction` | **required**. function when the selecting items|

## ⁉️نحوه استفاده 

#### ابتدا ویجت منو مورد نظر را در اسکافولد تعریف کنید: ✅

```
VerticalNavBar(
selectedIndex: currentRoute,
height:  MediaQuery.of(context).size.height,
width:  MediaQuery.of(context).size.width *  25  /  100,
onItemSelected: (value) {
setState(() {
_navigateRoutes(value);
});
},
items:  const [
VerticalNavBarItem(
title:  "H O M E",
),
VerticalNavBarItem(
title:  "S E T T I N G S",
),
VerticalNavBarItem(
title:  "P R O F I L E",
),
VerticalNavBarItem(
title:  " S E A R C H",),],)
```

(ClassicButtomNavBar) پارامتر های اجباری و اختیاری موجود برای استفاده در کلاس  🟢

| پارامتر | نوع     | توضیحات                |
| :-------- | :------- | :------------------------- |
| `backgroundColor` | `Color` | **اختیاری**. رنگ پس زمینه منو  |


| پارامتر | نوع     | توضیحات                       |
| :-------- | :------- | :-------------------------------- |
| `selectedIndex`      | `int` | **اختیاری**. شمارنده صفحات انتخاب شده در منو |

| پارامتر | نوع     | توضیحات                       |
| :-------- | :------- | :-------------------------------- |
| `height`      | `double` | **اختیاری**. تنظیم ارتفاع منو |

| پارامتر | نوع     | توضیحات                       |
| :-------- | :------- | :-------------------------------- |
| `width`      | `double` | **اختیاری**. تنظیم عرض منو  : |

| پارامتر | نوع     | توضیحات                       |
| :-------- | :------- | :-------------------------------- |
| `borderRadius`      | `double` | **اختیاری**. تنظیم میزان گرد بودن گوشه های منو|

| پارامتر | نوع     | توضیحات                       |
| :-------- | :------- | :-------------------------------- |
| `items`      | `List<VerticalNavBar>` | **اجباری**. لیست آیتم های  منو مورد  |

| پارامتر | نوع     | توضیحات                       |
| :-------- | :------- | :-------------------------------- |
| `onItemSelected`      | `callbackFunction` | **اجباری**. تابع مورد نیاز هنگام انتخاب هر ایتم|


## Author👦

- [@Taha ahvazi ](https://github.com/TahaAhvazi)


## License

[MIT](https://choosealicense.com/licenses/mit/)
