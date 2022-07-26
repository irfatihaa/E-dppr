import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
//import 'package:untitled/ui/shops/wone.dart';


class Production extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  Production(this.seriesList, {this.animate});

  factory Production.withSampleData() {
    return Production(
      _createSampleData(),
      //animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
        child:
        SizedBox(
          width: 1500, height: 450,
          child:
          charts.BarChart(
          seriesList,
          animate: animate,
          barGroupingType: charts.BarGroupingType.grouped,
          //dateTimeFactory: charts.LocalDateTimeFactory(),
          behaviors:
          [charts.SeriesLegend(position: charts.BehaviorPosition.bottom)],
          customSeriesRenderers: [
            charts.BarTargetLineRendererConfig<String>(
              // ID used to link series to this renderer.
                customRendererId: 'customTargetLine',
                groupingType: charts.BarGroupingType.grouped),
          ])));
    //]));
  }

  /// Create series list with multiple series
  //static List<charts.Series<ProdSales, DateTime>> _createSampleData(){
  static List<charts.Series<ProdSales, String>> _createSampleData() {

    final aProductionData = [
      ProdSales('Feb 1', 0),
      ProdSales('Feb 2', 0),
      ProdSales('Feb 3', 0),
      ProdSales('Feb 4', 0),
      ProdSales('Feb 5', 0),
      ProdSales('Feb 6', 0),
      ProdSales('Feb 7', 211),
      ProdSales('Feb 8', 252),
      ProdSales('Feb 9', 252),
      ProdSales('Feb 10', 252),
      ProdSales('Feb 11', 190),
      ProdSales('Feb 12', 169),
      ProdSales('Feb 13', 179),
      ProdSales('Feb 14', 243),
      ProdSales('Feb 15', 243),
      ProdSales('Feb 16', 243),
      ProdSales('Feb 17', 243),
      ProdSales('Feb 18', 243),
      ProdSales('Feb 19', 0),
      ProdSales('Feb 20', 0),
      ProdSales('Feb 21', 238),
      ProdSales('Feb 22', 245),
      ProdSales('Feb 23', 245),
      ProdSales('Feb 24', 245),
      ProdSales('Feb 25', 191),
      ProdSales('Feb 26', 0),
      ProdSales('Feb 27', 0),
      ProdSales('Feb 28', 237),

    ];

    final bProductionData = [
      ProdSales('Feb 1', 208),
      ProdSales('Feb 2', 280),
      ProdSales('Feb 3', 62),
      ProdSales('Feb 4', 265),
      ProdSales('Feb 5', 265),
      ProdSales('Feb 6', 263),
      ProdSales('Feb 7', 253),
      ProdSales('Feb 8', 152),
      ProdSales('Feb 9', 251),
      ProdSales('Feb 10', 181),
      ProdSales('Feb 11', 208),
      ProdSales('Feb 12', 280),
      ProdSales('Feb 13', 62),
      ProdSales('Feb 14', 265),
      ProdSales('Feb 15', 265),
      ProdSales('Feb 16', 263),
      ProdSales('Feb 17', 253),
      ProdSales('Feb 18', 152),
      ProdSales('Feb 19', 251),
      ProdSales('Feb 20', 181),
      ProdSales('Feb 21', 208),
      ProdSales('Feb 22', 280),
      ProdSales('Feb 23', 62),
      ProdSales('Feb 24', 265),
      ProdSales('Feb 25', 265),
      ProdSales('Feb 26', 263),
      ProdSales('Feb 27', 253),
      ProdSales('Feb 28', 152),
    ];

    final aTargetData = [
      ProdSales('Feb 1', 211),
      ProdSales('Feb 2', 252),
      ProdSales('Feb 3', 252),
      ProdSales('Feb 4', 252),
      ProdSales('Feb 5', 190),
      ProdSales('Feb 6', 169),
      ProdSales('Feb 7', 179),
      ProdSales('Feb 8', 243),
      ProdSales('Feb 9', 243),
      ProdSales('Feb 10', 243),
      ProdSales('Feb 11', 211),
      ProdSales('Feb 12', 252),
      ProdSales('Feb 13', 252),
      ProdSales('Feb 14', 252),
      ProdSales('Feb 15', 190),
      ProdSales('Feb 16', 169),
      ProdSales('Feb 17', 179),
      ProdSales('Feb 18', 243),
      ProdSales('Feb 19', 243),
      ProdSales('Feb 20', 243),
      ProdSales('Feb 21', 211),
      ProdSales('Feb 22', 252),
      ProdSales('Feb 23', 252),
      ProdSales('Feb 24', 252),
      ProdSales('Feb 25', 190),
      ProdSales('Feb 26', 169),
      ProdSales('Feb 27', 179),
      ProdSales('Feb 28', 243),
    ];

    final bTargetData = [
      ProdSales('Feb 1', 225),
      ProdSales('Feb 2', 250),
      ProdSales('Feb 3', 250),
      ProdSales('Feb 4', 250),
      ProdSales('Feb 5', 250),
      ProdSales('Feb 6', 245),
      ProdSales('Feb 7', 245),
      ProdSales('Feb 8', 245),
      ProdSales('Feb 9', 245),
      ProdSales('Feb 10', 245),
      ProdSales('Feb 11', 225),
      ProdSales('Feb 12', 250),
      ProdSales('Feb 13', 250),
      ProdSales('Feb 14', 250),
      ProdSales('Feb 15', 250),
      ProdSales('Feb 16', 245),
      ProdSales('Feb 17', 245),
      ProdSales('Feb 18', 245),
      ProdSales('Feb 19', 245),
      ProdSales('Feb 20', 245),
      ProdSales('Feb 21', 225),
      ProdSales('Feb 22', 250),
      ProdSales('Feb 23', 250),
      ProdSales('Feb 24', 250),
      ProdSales('Feb 25', 250),
      ProdSales('Feb 26', 245),
      ProdSales('Feb 27', 245),
      ProdSales('Feb 28', 245),
    ];

    return [
      charts.Series<ProdSales,String>(
        id: 'Shift A',
        domainFn: (ProdSales sales, _) => sales.date,
        measureFn: (ProdSales sales, _) => sales.sales,
        colorFn: (_, __) => charts.MaterialPalette.cyan.shadeDefault,
        //fillColorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault.lighter,
        data: aProductionData,
      ),
      charts.Series<ProdSales, String>(
        id: 'Shift B',
        domainFn: (ProdSales sales, _) => sales.date,
        measureFn: (ProdSales sales, _) => sales.sales,
        colorFn: (_, __) => charts.MaterialPalette.cyan.shadeDefault.lighter,
        //fillColorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault.lighter,
        data: bProductionData,
      ),

      charts.Series<ProdSales, String>(
        id: 'A Target',
        domainFn: (ProdSales sales, _) => sales.date,
        measureFn: (ProdSales sales, _) => sales.sales,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        data: aTargetData,
      )
      // Configure our custom bar target renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
      charts.Series<ProdSales, String>(

        id: 'B Target',
        domainFn: (ProdSales sales, _) => sales.date,
        measureFn: (ProdSales sales, _) => sales.sales,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        data: bTargetData,
      )
      // Configure our custom bar target renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
    ];
  }
}

class ProdSales {
  final String date;
  final int sales;

  ProdSales(this.date, this.sales);
}