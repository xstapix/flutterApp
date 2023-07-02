import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MaterialInfo extends StatefulWidget {
  final objMaterial;

  const MaterialInfo({
    super.key, 
    required this.objMaterial
  });
  
  @override
  State<MaterialInfo> createState() => _MaterialInfoState();
}

class _MaterialInfoState extends State<MaterialInfo> {
  var _like;
  var _read;

  @override
  void initState() {
    _like = false;
    _read = false;

    super.initState();
  }

  void handlerFavorite() {
    setState(() {
      _like = !_like;
    });
  }

  void handlerRead() {
    setState(() {
      _read = !_read;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 8.0),
              width: 40.0,
              height: 40.0,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                shape: BoxShape.circle,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.objMaterial['date'], style: TextStyle(color: Colors.white),),
                Row(
                  children: [
                    const Icon(Icons.camera_alt, color: Colors.white, size: 17),
                    Container(
                      margin: const EdgeInsets.only(left: 8.0),
                      child: Text('${widget.objMaterial['time']} минут', style: TextStyle(color: Colors.white), )
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            InkWell(                        
              child: Container(
                margin: const EdgeInsets.only(right: 4),
                child: SvgPicture.string(
                  !_like ? '''<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg"><circle cx="20" cy="20" r="20" fill="white"></circle><path d="M15.2694 19.889C14.0795 18.2593 14.4761 15.8148 16.4592 15C18.4423 14.1852 19.6321 15.8148 20.0287 16.6297C20.4253 15.8148 22.0118 14.1852 23.9948 15C25.9779 15.8148 25.9779 18.2593 24.7881 19.889C23.5982 21.5186 20.0287 24.7779 20.0287 24.7779C20.0287 24.7779 16.4592 21.5186 15.2694 19.889Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg>''' :  
                    '''<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg"><circle cx="20" cy="20" r="20" fill="black"></circle><path d="M15.2694 19.889C14.0795 18.2593 14.4761 15.8148 16.4592 15C18.4423 14.1852 19.6321 15.8148 20.0287 16.6297C20.4253 15.8148 22.0118 14.1852 23.9948 15C25.9779 15.8148 25.9779 18.2593 24.7881 19.889C23.5982 21.5186 20.0287 24.7779 20.0287 24.7779C20.0287 24.7779 16.4592 21.5186 15.2694 19.889Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg>'''
                  ),
              ),                        
              onTap: () {handlerFavorite();},                      
            ),
            InkWell(                        
              child: Container(
                margin: const EdgeInsets.only(right: 4),
                child: SvgPicture.string(
                  !_read ? '''<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg"><circle cx="20" cy="20" r="20" fill="white"></circle><path d="M21.0448 16.0216C21.2299 15.8455 21.4762 15.7481 21.7317 15.75C21.9872 15.7519 22.232 15.853 22.4144 16.032C22.5967 16.211 22.7025 16.4538 22.7092 16.7092C22.716 16.9647 22.6232 17.2127 22.4506 17.4011L17.2087 23.9567C17.1185 24.0538 17.0097 24.1317 16.8888 24.1858C16.7679 24.2399 16.6373 24.269 16.5048 24.2715C16.3724 24.2739 16.2408 24.2497 16.1179 24.2001C15.9951 24.1505 15.8835 24.0767 15.7898 23.983L12.3136 20.5068C12.2168 20.4166 12.1392 20.3078 12.0853 20.187C12.0314 20.0661 12.0025 19.9356 12.0002 19.8033C11.9978 19.671 12.0222 19.5396 12.0717 19.4169C12.1213 19.2942 12.195 19.1828 12.2886 19.0892C12.3822 18.9957 12.4936 18.9219 12.6163 18.8723C12.739 18.8228 12.8704 18.7984 13.0027 18.8008C13.135 18.8031 13.2655 18.8321 13.3863 18.8859C13.5072 18.9398 13.616 19.0174 13.7062 19.1142L16.4572 21.8639L21.0186 16.0505C21.0268 16.0404 21.0355 16.0308 21.0448 16.0216ZM19.8362 22.7744L21.0448 23.983C21.1385 24.0765 21.25 24.1502 21.3727 24.1996C21.4955 24.249 21.6269 24.2733 21.7592 24.2708C21.8915 24.2684 22.0219 24.2393 22.1427 24.1853C22.2636 24.1314 22.3723 24.0536 22.4624 23.9567L27.7069 17.4011C27.8011 17.3081 27.8756 17.197 27.926 17.0746C27.9763 16.9521 28.0015 16.8208 27.9999 16.6884C27.9984 16.5561 27.9702 16.4253 27.917 16.3041C27.8638 16.1829 27.7867 16.0736 27.6904 15.9828C27.594 15.892 27.4804 15.8216 27.3562 15.7757C27.232 15.7298 27.0998 15.7094 26.9676 15.7157C26.8354 15.722 26.7058 15.755 26.5865 15.8125C26.4673 15.87 26.3609 15.951 26.2736 16.0505L21.7109 21.8639L21.0737 21.2254L19.8349 22.7744H19.8362Z" fill="black"></path></svg>''' : 
                    '''<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg"><circle cx="20" cy="20" r="20" fill="black"></circle><path d="M21.0448 16.0216C21.2299 15.8455 21.4762 15.7481 21.7317 15.75C21.9872 15.7519 22.232 15.853 22.4144 16.032C22.5967 16.211 22.7025 16.4538 22.7092 16.7092C22.716 16.9647 22.6232 17.2127 22.4506 17.4011L17.2087 23.9567C17.1185 24.0538 17.0097 24.1317 16.8888 24.1858C16.7679 24.2399 16.6373 24.269 16.5048 24.2715C16.3724 24.2739 16.2408 24.2497 16.1179 24.2001C15.9951 24.1505 15.8835 24.0767 15.7898 23.983L12.3136 20.5068C12.2168 20.4166 12.1392 20.3078 12.0853 20.187C12.0314 20.0661 12.0025 19.9356 12.0002 19.8033C11.9978 19.671 12.0222 19.5396 12.0717 19.4169C12.1213 19.2942 12.195 19.1828 12.2886 19.0892C12.3822 18.9957 12.4936 18.9219 12.6163 18.8723C12.739 18.8228 12.8704 18.7984 13.0027 18.8008C13.135 18.8031 13.2655 18.8321 13.3863 18.8859C13.5072 18.9398 13.616 19.0174 13.7062 19.1142L16.4572 21.8639L21.0186 16.0505C21.0268 16.0404 21.0355 16.0308 21.0448 16.0216ZM19.8362 22.7744L21.0448 23.983C21.1385 24.0765 21.25 24.1502 21.3727 24.1996C21.4955 24.249 21.6269 24.2733 21.7592 24.2708C21.8915 24.2684 22.0219 24.2393 22.1427 24.1853C22.2636 24.1314 22.3723 24.0536 22.4624 23.9567L27.7069 17.4011C27.8011 17.3081 27.8756 17.197 27.926 17.0746C27.9763 16.9521 28.0015 16.8208 27.9999 16.6884C27.9984 16.5561 27.9702 16.4253 27.917 16.3041C27.8638 16.1829 27.7867 16.0736 27.6904 15.9828C27.594 15.892 27.4804 15.8216 27.3562 15.7757C27.232 15.7298 27.0998 15.7094 26.9676 15.7157C26.8354 15.722 26.7058 15.755 26.5865 15.8125C26.4673 15.87 26.3609 15.951 26.2736 16.0505L21.7109 21.8639L21.0737 21.2254L19.8349 22.7744H19.8362Z" fill="white"></path></svg>'''
                )
              ),                        
              onTap: () {handlerRead();},                      
            )
          ],
        ),
      ],
    );
  }
}