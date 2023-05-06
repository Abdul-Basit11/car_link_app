import 'package:flutter/material.dart';

class HostNotificationViewBody extends StatelessWidget {
  const HostNotificationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        title: Text(
          'Notification',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            backgroundColor: Colors.red.shade100,fontSize: 20
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      subtitle: Text(
                        '1 min ago',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: Colors.grey),
                      ),
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black)),
                      ),
                      title: Text(
                        'The Driver accepted your order.Let’s continue further on the chat',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12
                        ),
                      ),
                      trailing: const CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
