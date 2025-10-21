import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var contador = 0;
  void incrementar(){
    contador++;
    setState(() {});
  }

  void decrementar(){
    contador--;
    setState(() {});
  }

  void reset(){
    contador = 0;
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {

    const tamano30 = TextStyle(fontSize: 30);

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Contador'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Número de clics", style: tamano30),
            SizedBox(height: 50),
            Text('$contador', style: tamano30)
          ],
        )
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButtom(
        incrementarFn: incrementar,
        decrementarFn: decrementar,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActionButtom extends StatelessWidget {
  
  final Function incrementarFn;
  final Function decrementarFn;
  final Function resetFn;

  const CustomFloatingActionButtom({
    super.key, required this.incrementarFn, required this.decrementarFn, required this.resetFn
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(

          child: const Icon( Icons.remove ),

          onPressed:()=>decrementarFn()

        ),
        
        FloatingActionButton(

          child: const Icon( Icons.home ),

          onPressed:() => resetFn(),
          
        ),
        
        FloatingActionButton(

          child: const Icon( Icons.add ),
          onPressed: () => incrementarFn()
        ),
        
      ],
    );
  }
}