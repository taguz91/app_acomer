import 'package:app_acomer/src/widgets/bottom-carrito.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'), 
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: screenSize.height * 0.25,
            child: _getTop(screenSize),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(236, 233, 222, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)
                )
              ),
            )
          )  
        ],
      ),

      // floatingActionButton: ,
      bottomNavigationBar: BottomCarrito(),
    );
  }

  Widget _getTop(Size size) {
    return Stack(
      children: <Widget>[
        _getOpcionesTop(size),
        Center(
          child: Container(
            height: (size.height * 0.25) / 2,
            width: size.width * 0.80,
            decoration: BoxDecoration(
              color: Color.fromRGBO(236, 233, 222, 1),
              borderRadius: BorderRadius.all(Radius.circular(25))
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: ((size.height * 0.18) / 2),
                  width: ((size.height * 0.18) / 2),
                  margin: EdgeInsets.symmetric(horizontal: (size.height * 0.035) / 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.network(
                      'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=340&w=690', 
                      fit: BoxFit.cover,
                      
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: (size.height * 0.035) / 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: ListView(
                            children: <Widget>[
                              Text(
                                '1 hot cake \n'
                                '2 cafes \n'
                                '1 tamal \n'
                                '2 croasam\n'
                                '1 tostada\n'
                                '3 batidos de mora'
                              ),
                            ],
                          )
                        ),
                        
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: (size.height * 0.035) / 2),
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Color.fromRGBO(14, 70, 85, 1),
                            ),
                            // width: double.infinity,
                            child: Text('Reservar de nuevo', 
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

        Positioned(
          bottom: size.height * 0.02,
          left: size.height * 0.02,
          child: Text('Mas cercanos a ti:',
            style: TextStyle(fontSize: 16),
          )
        )

      ],
    );
  }

  Widget _getOpcionesTop(Size size) {
    return Positioned(
      top: size.height * 0.015,
      child: Container(
        height: size.height * 0.10,
        width: size.width * 0.75,
        decoration: BoxDecoration(
          color: Color.fromRGBO(236, 233, 222, 0.5),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            bottomRight: Radius.circular(25)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 10.0),
              child: Text('Ultimas compras:', 
                style: TextStyle(fontSize: 16),
              ),
            ),
            GestureDetector(
              onTap: () {}, 
              child: Container(
                margin: EdgeInsets.only(top: 5, right: 15),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color.fromRGBO(14, 70, 85, 1),
                ),
                child: Text('Ver todas', 
                  style: TextStyle(color: Colors.white),
                ),
              )
            )
          ],
        ),
      )
    );
  }

}