import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) => 0);

class Home extends ConsumerWidget {
  const Home({super.key});

  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var counter = ref.watch(counterProvider);
    return Scaffold(
     
      body: Center(
        
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
                
              Text(counter.toString(), style: const TextStyle(fontSize: 50),),
              const SizedBox(height: 50,),

               ElevatedButton(onPressed: ()
              {
                ref.read(counterProvider.notifier).state++;
              }, child: const Text('Increment')),

                ElevatedButton(onPressed: ()
              {
                ref.read(counterProvider.notifier).state--;
              }, child: const Text('Decrement')),
              
              
          ],
        ),

       
        ),
      
    );
  }
}
