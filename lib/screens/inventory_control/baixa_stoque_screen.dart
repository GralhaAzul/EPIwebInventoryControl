import 'package:EPIwebInventoryControl/components/custom_drawer/custom_drawer.dart';
import 'package:EPIwebInventoryControl/stores/baixa_estoque_store.dart';
import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/material.dart';

//BaixaStoqueScreen
class BaixaStoqueScreen extends StatelessWidget {
  final BaixaEstoqueStore baixaStore = BaixaEstoqueStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: Text('Baixa de Estoque'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //LinearProgressIndicator(),
            Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Informe os dados abaixo',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[900],
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                          Observer(builder: (_) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: FindDropdown(
                                items: baixaStore.empresas,
                                label: 'Empresa',
                                constraints: BoxConstraints.tightForFinite(),
                                showClearButton: true,
                                onChanged: baixaStore.setEmpresa,
                                showSearchBox: false,
                                backgroundColor: Colors.grey[200],
                                titleStyle:
                                    TextStyle(color: Colors.indigo[800]),
                              ),
                            );
                          }),
                          Observer(builder: (_) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: FindDropdown(
                                items: baixaStore.filiais,
                                label: 'Filial',
                                constraints: BoxConstraints.tightForFinite(),
                                showClearButton: true,
                                onChanged: baixaStore.setFilial,
                                showSearchBox: false,
                                backgroundColor: Colors.grey[200],
                                titleStyle:
                                    TextStyle(color: Colors.indigo[800]),
                              ),
                            );
                          }),
                          Observer(builder: (_) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: FindDropdown(
                                items: baixaStore.locaisEstoque,
                                label: 'Local de Estoque',
                                constraints: BoxConstraints.tightForFinite(),
                                showClearButton: true,
                                onChanged: baixaStore.setLocalEstoque,
                                showSearchBox: true,
                                errorBuilder: (context, exception) {
                                  print(exception);
                                  return exception;
                                },
                                backgroundColor: Colors.grey[200],
                                titleStyle:
                                    TextStyle(color: Colors.indigo[800]),
                              ),
                            );
                          }),
                          Container(
                            height: 55,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Código do produto',
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Text(
                              'Ou',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            height: 40,
                            //margin: const EdgeInsets.only(top: 20, bottom: 12),
                            child: RaisedButton(
                              disabledColor: Colors.orange.withAlpha(120),
                              color: Colors.indigo,
                              child: Text('Fazer leitura de QRcode'),
                              textColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              onPressed: () async {
                                String qrcode = await _readQRcode();
                                print(qrcode);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ) //cluna,
        );
  }
}

Future<String> _readQRcode() async {
  String cameraScanResult = await scanner.scan();
  return cameraScanResult;
}
