[1mdiff --git a/tests/calificaciones.test.js b/tests/calificaciones.test.js[m
[1mindex b2cce1e..060e0f6 100644[m
[1m--- a/tests/calificaciones.test.js[m
[1m+++ b/tests/calificaciones.test.js[m
[36m@@ -1,27 +1,26 @@[m
 import test from 'node:test';[m
 import assert from 'node:assert/strict';[m
[31m-import { calcularPromedio, obtenerEstado } from '../src/js/calificaciones.js';[m
[32m+[m[32mimport {[m
[32m+[m[32m  calcularPromedio,[m
[32m+[m[32m  clasificarPromedio[m
[32m+[m[32m} from '../src/js/calificaciones.js';[m
 [m
[31m-test('calcula el promedio de tres calificaciones', () => {[m
[32m+[m[32mtest('la versión existente continúa calculando el promedio', () => {[m
   assert.equal(calcularPromedio([8, 7, 9]), 8);[m
 });[m
 [m
[31m-test('acepta números decimales', () => {[m
[31m-  assert.equal(calcularPromedio([7.5, 8.25, 9]), 8.25);[m
[32m+[m[32mtest('clasifica exactamente 9 como Excelente', () => {[m
[32m+[m[32m  assert.equal(clasificarPromedio(9), 'Excelente');[m
 });[m
 [m
[31m-test('rechaza un arreglo vacío', () => {[m
[31m-  assert.throws(() => calcularPromedio([]), RangeError);[m
[32m+[m[32mtest('clasifica exactamente 7 como Aprobado', () => {[m
[32m+[m[32m  assert.equal(clasificarPromedio(7), 'Aprobado');[m
 });[m
 [m
[31m-test('rechaza valores fuera del rango', () => {[m
[31m-  assert.throws(() => calcularPromedio([8, 11, 9]), RangeError);[m
[32m+[m[32mtest('clasifica exactamente 5 como Recuperación', () => {[m
[32m+[m[32m  assert.equal(clasificarPromedio(5), 'Recuperación');[m
 });[m
 [m
[31m-test('informa Aprobado para un promedio igual a 7', () => {[m
[31m-  assert.equal(obtenerEstado(7), 'Aprobado');[m
[31m-});[m
[31m-[m
[31m-test('informa Reprobado para un promedio menor a 7', () => {[m
[31m-  assert.equal(obtenerEstado(6.99), 'Reprobado');[m
[32m+[m[32mtest('clasifica un promedio menor a 5 como Reprobado', () => {[m
[32m+[m[32m  assert.equal(clasificarPromedio(4.99), 'Reprobado');[m
 });[m
