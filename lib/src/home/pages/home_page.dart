import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:neon_weather/src/home/home.dart'
    show WeatherInfo, homePageStateNotifierProvider;

@RoutePage()
class HomePage extends ConsumerWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchData = ref.watch(homePageStateNotifierProvider);
    DateTime now = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 22.0),
          child: Text('${now.hour}:${now.minute}'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: fetchData.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        final data = fetchData.data![index];
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'London',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 50,
                              ),
                            ),
                            Text('Today ${now.day}.${now.month}.${now.year}'),
                            SizedBox(height: 10),
                            Text(
                              data.current?.temperature != null
                                  ? '${int.parse(data.current!.temperature.truncate().toString())}°C'
                                  : 'No data',
                              style: TextStyle(
                                fontSize: 40,
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data.daily?[index].summary ?? 'No data',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    data.current?.uv?.index != null
                                        ? 'UV Index: ${data.current!.uv!.index.toString()}'
                                        : 'UV Index: No data',
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                WeatherInfo(
                                  text: 'Today',
                                  info1: data.daily?[index].temperature?.minimum
                                              .toString() !=
                                          null
                                      ? 'Min: ${int.parse(data.daily![index].temperature!.minimum.truncate().toString())}°C'
                                      : 'No data',
                                  info2: data.daily?[index].temperature?.maximum
                                              .toString() !=
                                          null
                                      ? 'Max: ${int.parse(data.daily![index].temperature!.maximum.truncate().toString())}°C'
                                      : 'No data',
                                ),
                                WeatherInfo(
                                  text: 'Tomorrow',
                                  info1: data.daily?[index + 1].temperature
                                              ?.minimum
                                              .toString() !=
                                          null
                                      ? 'Min: ${int.parse(data.daily![index + 1].temperature!.minimum.truncate().toString())}°C'
                                      : 'No data',
                                  info2: data.daily?[index + 1].temperature
                                              ?.maximum
                                              .toString() !=
                                          null
                                      ? 'Max: ${int.parse(data.daily![index + 1].temperature!.maximum.truncate().toString())}°C'
                                      : 'No data',
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    WeatherInfo(
                                      text: 'Wind',
                                      info1: data.current?.wind?.speed != null
                                          ? '${int.parse(data.current!.wind!.speed.truncate().toString())} meter/sec'
                                          : 'No data',
                                    ),
                                    WeatherInfo(
                                      text: 'Rain',
                                      info1: data.current?.rain?.amount != null
                                          ? '${int.parse(data.current!.rain!.amount.truncate().toString())} mm/h'
                                          : 'No data',
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    WeatherInfo(
                                      text: 'Humidity',
                                      info1: data.current?.humidity != null
                                          ? '% ${int.parse(data.current!.humidity.truncate().toString())}'
                                          : 'No data',
                                    ),
                                    WeatherInfo(
                                      text: 'Pressure',
                                      info1: data.current?.pressure != null
                                          ? '${int.parse(data.current!.pressure.truncate().toString())} hPa'
                                          : 'No data',
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                      itemCount: fetchData.data!.length,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
