import 'package:flutter/material.dart';

class Challenge {
  final String title;
  final String description;

  Challenge({
    required this.title,
    required this.description,
  });
}

class ChallengesWidget extends StatelessWidget {
  // Supongamos que tienes una lista de desafíos como esta
  final List<Challenge> challenges = [
    Challenge(
        title: 'Compra productos envasados minimamente',
        description:
            'Los productos con menos paquetes generan menos desperdicios y menos contaminación. Hay que darles prioridad'),
    Challenge(title: 'Evite usar bolsas de plastico', description: 'Reducir el uso de bolsas de plastico usando una bolsa de tela o bolsas reutilizables ayudaran a reducir el impacto al medio ambiente'),
    Challenge(title: 'Evitar precalentar el horno', description: 'Evite precalentar el horno. A menos que se necesite una temperatura de horneado precisa. Caliente sus alimentos al encender el horno'),
    Challenge(title: 'Promesa de rechazo a los sorbetes de plastico', description: 'Rechace el uso de pajitas de plastico y evite su compra'),
    Challenge(title: 'Hacer Deporte', description: 'Vuelvete una persona saludable, hacer deporte te ayudara a ser mas fuerte, productivo y feliz'),
    Challenge(title: 'Compartir consejos y publicaciones medioambientales', description: 'Al compartir los conocimientos y consejos ambientales con lo demás ayudara a difundir el cuidado del medio ambiente'),
    Challenge(title: '¡Usa Botellas de Agua Reutilizables!', description: 'En lugar de utilizar botellas de  plastico, usa una botella reutilizable para tus bebidas'),
    Challenge(title: 'Desafío 8', description: 'Descripción del desafío 8'),
    Challenge(title: 'Desafío 9', description: 'Descripción del desafío 9'),
    Challenge(title: 'Desafío 10', description: 'Descripción del desafío 10'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: challenges.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: EdgeInsets.all(5.0), // Margen entre las tarjetas
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
          ),
          elevation: 4.0, // Elevación de la tarjeta
          child: ListTile(
            title: Text(challenges[index].title),
            subtitle: Text(challenges[index].description),
            // Agrega más contenido de la tarjeta según sea necesario
          ),
        );
      },
    );
  }
}
