

# Informe de Proyecto: Sistema de Control de Ventas - Gastronomia

**Autor:** Luciano Alvarez

**Carrera:** Ingenieria en Informatica (UNAJ)

**Proyecto:** Panel de Control Interactivo para Pizzeria

---

## 1. Introduccion

Este proyecto nace de la necesidad de organizar y entender el flujo de caja de un negocio gastronomico. El objetivo fue crear una herramienta que tome una lista de ventas desordenada y la convierta en cuadros y graficos faciles de leer para que el dueño pueda tomar decisiones rapidas sin perder tiempo haciendo cuentas manuales.

---

## 2. Como funciona el sistema?

El panel central es dinamico. Esto significa que el usuario solo tiene que elegir un mes en una celda especifica (S4) y automaticamente todo el informe se actualiza.

### Puntos clave del analisis:

* **Control de Facturacion**: Muestra el total de dinero ingresado, cuantos pedidos se hicieron y cuanto gasta, en promedio, cada cliente.
* **Ventas por Producto**: Clasifica automaticamente los ingresos por categorias como Pizzas, Bebidas, Postres y Acompañamientos.
* **Desempeño del Personal**: Incluye un ranking que muestra quienes son los vendedores que mas facturan y cuantos pedidos gestiona cada uno.
* **Gestion de Cobros**: Detalla cuanta plata entro por cada canal (Delivery, Salon o Mostrador) y de que forma pago la gente (Efectivo, Tarjeta o QR).

---

## 3. Trabajo realizado (Detalle del proceso)

Para lograr este resultado, se realizaron los siguientes pasos tecnicos:

1. **Limpieza de Datos**: Se estandarizaron los nombres de los productos y empleados para evitar errores en los calculos, como corregir diferencias entre mayusculas y minusculas.
2. **Automatizacion**: Se programaron formulas inteligentes (SUMAR.SI.CONJUNTO) que buscan y suman datos automaticamente basandose en el mes elegido.
3. **Diseño Visual**: Se crearon graficos de barras, circulares y de tendencia para que la informacion se entienda de un solo vistazo.
4. **Jerarquizacion**: Se usaron colores tipo semaforo para resaltar automaticamente a los vendedores con mejores ventas.

---

## 4. Conclusion y Valor del Proyecto

Como estudiante de Ingenieria, este trabajo demuestra la capacidad de aplicar logica para resolver problemas reales de un negocio. El sistema no solo ahorra horas de trabajo administrativo, sino que permite ver claramente que productos se venden mas, que empleados son mas productivos y por que medios prefiere pagar el cliente.
