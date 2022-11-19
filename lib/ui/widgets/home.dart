import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home ({super.key});

  @override 
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.greenAccent[100],
                    child: SizedBox(
                      width: 400,
                      height: 500,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const Flexible(
                              child: SizedBox(
                                  width: 300,
                                  height: 100,
                                  child: Image(
                                      image: NetworkImage(
                                          'https://www.fiction-addiction.com/media/home/pictures/Bookshop_Logo_Dark.png'))),
                            ),
                            Text(
                              'Cửa hàng bán sách',
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.green[900],
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Đầu sách phong phú, chất lượng',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.green,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 1000,
                              child: ElevatedButton(
                                onPressed: () => 'Null',
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.chevron_right),
                                      Text('Uy Tín')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1000,
                              child: ElevatedButton(
                                onPressed: () => 'Null',
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.chevron_right),
                                      Text('Chất lượng')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1000,
                              child: ElevatedButton(
                                onPressed: () => 'Null',
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.chevron_right),
                                      Text('Bảo mật')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1000,
                              child: ElevatedButton(
                                onPressed: () => 'Null',
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.chevron_right),
                                      Text('Chế độ đổi trả dễ dàng')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1000,
                              child: ElevatedButton(
                                onPressed: () => 'Null',
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.chevron_right),
                                      Text('Vận chuyển nhanh chóng')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1000,
                              child: ElevatedButton(
                                onPressed: () => 'Null',
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.chevron_right),
                                      Text('Bán hàng đảm bảo, dễ dàng truy cập')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],),
    );
  }
}