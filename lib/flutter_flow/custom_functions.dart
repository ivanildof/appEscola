import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double calcularTotalFatura(List<FaturaRecord> lista) {
  //  pego o precoUnidade da lista e multiplique com a quantidade menos os descontos e retorne o resultado
  double total = 0.0;
  for (var fatura in lista) {
    double precoUnidade = fatura.precoUnidade ?? 0.0;
    int quantidade = fatura.quantidade ?? 0;
    double desconto = fatura.desconto ?? 0.0;
    total += (precoUnidade * quantidade) - desconto;
  }
  return total;
}
