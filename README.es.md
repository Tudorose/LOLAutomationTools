<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | <a href="./README.en.md">English</a> | <a href="./README.zh-TW.md">繁體中文</a> | <a href="./README.ja.md">日本語</a> | <a href="./README.ko.md">한국어</a> | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | <a href="./README.fr.md">Français</a> | <a href="./README.de.md">Deutsch</a> | **Español** | <a href="./README.it.md">Italiano</a> | <a href="./README.ru.md">Русский</a> | <a href="./README.pt.md">Português</a> | <a href="./README.nl.md">Nederlands</a> | <a href="./README.pl.md">Polski</a> | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | <a href="./README.tr.md">Türkçe</a> | <a href="./README.vi.md">Tiếng Việt</a> | <a href="./README.id.md">Bahasa Indonesia</a> | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>

Esta es una traducción de la comunidad (español) del [README en chino simplificado](./README.md). Se aceptan PR de corrección.

# Introducción
**LOLAutomationTools** es una herramienta de expansión de funciones para **"League of Legends"**; se utiliza para ayudar a los jugadores a realizar algunas operaciones simples con el cliente para ahorrar una pequeña cantidad de tiempo en algunas escenas en las que no pueden liberar sus manos o necesitan salir temporalmente; el software no interferirá demasiado con la comprensión y la jugabilidad del juego por parte del jugador, por lo que algunas funciones aún deben configurarse manualmente (como la configuración de las runas del héroe). Demasiada moderación adormecerá a la gente y perderá la diversión del juego en sí; Juegue activa y felizmente para construir un ambiente armonioso.

# Funciones
- Auto-elegir
  - Pre-elegir
- Auto-banear
  - Ignorar la selección del equipo
  - Modo grupo deshabilitado
- Elección aleatoria
- Anti-abandono en pick/ban
- Auto-aceptar
  - Retraso en la aceptación de juegos.
- Crear sala
- Buscar partida
  - Detección de tiempo de espera del partido
- Intercambio
  - Intercambia héroes en modo aleatorio
    - O simplemente aceptar pasivamente que otros jugadores intercambien héroes.
    - Rechazar intercambios de héroes no elegidos
  - Selección de intercambio de modo Omen
    - O recibir pasivamente las selecciones de intercambio de posiciones de otros jugadores
    - Rechazar intercambios de bits no preseleccionados
  - Pisos de intercambio modo reclutamiento
    - O simplemente aceptar pasivamente que otros jugadores cambien de piso.
    - Rechazar intercambios de piso no configurados
- Omitir página de honor
- Saltar página de desbloqueo
- Respuesta automática de chat
  - Responder al mensaje de un amigo mientras estás fuera
  - Responde a invitaciones a juegos mientras estás fuera
    - Rechazar la invitación al juego al salir
- Ventana auxiliar
  - Pantalla BUFF del equilibrio del héroe del modo de entretenimiento
  - Aplicar runas automáticamente
  - Corrección de errores de runas
  - Configuración independiente del héroe
- Cerrar juego auto.
- Reconectar auto.
- Reciba recompensas de pase automáticamente (incluidas Teamfight Tactics)
- Procesamiento de solicitud de amistad
  - Eliminar amigos en lotes
- carrera personalizada
  - Antecedentes profesionales
  - avatar de invocador
  - estado del cliente
  - firma de estado
  - fragmento de nombre
  - Puntos de logro de héroe
  - Medallas claras
- Bloqueo de teclas de función
- Consulta de registro
  - Enviar resultados
  - Detección de hacking dentro del juego.
  - Jugadores viendo el juego.
  - Informes de los jugadores después del partido.
- Llame a la oficina
- lista negra
- Configuración de teclas de acceso directo
- Configuración del tema
  - Tema oscuro/claro
  - Tema adaptativo
  - Tema personalizado
  - Configuración de la imagen de fondo
  - Personalización de fuentes
- Funciones ampliadas
  - Selección automática de tarjeta (Card Master)

## Auto-elegir
Antes de usar **Select Hero** y **Disable Hero**, debe realizar operaciones de edición en la página de configuración (botón detrás del elemento de cambio).

Los elementos de héroe agregados en la configuración de la rama solo tienen efecto en algunos modos de juego con *posiciones preseleccionadas* (como *Calificado* y *Extreme Blitz*), los aleatorios solo tienen efecto en los modos *Random Hero* (como *Arcs*, *Infinite Brawl*, la página de configuración aleatoria no está incluida en la configuración del héroe deshabilitado) y son generalmente válidos en todos los demás modos (excluyendo los modos enumerados anteriormente, esto es por el bien de las especificaciones de uso). Al realizar la selección automática de héroe, el héroe se seleccionará de acuerdo con **Seleccionar héroes**. Los elementos de configuración se seleccionan de arriba a abajo.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## Pre-elegir
La lógica de ejecución de esta función es básicamente la misma que **Seleccionar héroes**. La diferencia es que **Héroes preseleccionados** solo tendrá efecto en modos con etapas deshabilitadas, como *Calificado* y algunos modos de entretenimiento que requieren héroes deshabilitados.

## Auto-banear
La página de configuración **Desactivar Hero** es básicamente la misma que la página de configuración **Seleccionar Hero**. Solo hay un botón para cambiar de modo en la esquina superior derecha. Haga clic en el botón para cambiar al modo deshabilitado.

*Modo de prohibición normal*: La lógica de operación de este modo es consistente con la página de configuración de **Select Heroes**. Al ejecutar el baneo automático de héroes, si no hay ningún héroe deshabilitado configurado, el jugador será baneado en 0 segundos del tiempo restante de la fase de Ban.

*Modo de desactivación de grupo*: Los elementos en la lista de configuración serán reemplazados por los héroes correspondientes en la configuración **Seleccionar héroes**. Al seleccionar un elemento, haz doble clic en el elemento del héroe a la izquierda para agregarlo al **Grupo de desactivación** del héroe. Al desactivar automáticamente al héroe, se seguirá el orden de los elementos de configuración de **Seleccionar héroes**. Si no hay héroes para desactivar en el **Grupo de desactivación** de todas las configuraciones de **Seleccionar héroes**, se desactivarán según la lógica del modo de prohibición normal.

>Si *Ignorar preselección de compañero de equipo* está habilitado, la detección de preselección de equipo se omitirá al realizar una prohibición automática de héroe. No se recomienda habilitar esta opción.

## Auto-aceptar
Acepta automáticamente la coincidencia después de ser emparejado.

>Cuando la opción *Retrasar la aceptación de coincidencias* está habilitada, **Aceptar coincidencias** solo aceptará automáticamente la coincidencia cuando quede el último segundo de la cuenta regresiva de aceptación.

## Crear sala
Puedes crear una coincidencia manualmente a través del botón **Crear coincidencia** o activar este interruptor para crear una coincidencia automáticamente.

>*Crear un juego automáticamente* Debes seleccionar el modo de juego que deseas crear en *Más configuraciones*, esta opción no se guardará en la configuración.

## Buscar partida
Busca coincidencias automáticamente. Esto solo tendrá efecto cuando estés en una sala del modo partido y seas el propietario del equipo (anfitrión).

>Si la opción *Detección de tiempo de espera* está habilitada, las coincidencias se volverán a buscar automáticamente en la cola de coincidencias si la estimación de la cola excede el intervalo especificado.

## omitir cumplidos
Sáltate la página de elogios a tus compañeros de equipo al final del juego.

## Omitir fin de partida
Omita la espera de liquidación al final del juego (la pantalla negra se carga en círculos) o la página de liquidación posterior al partido y regrese a la sala del modo de juego.

## Intercambio
Contiene el elemento del interruptor principal y tres elementos del interruptor independientes; también es necesario realizar otras configuraciones. En **Función de intercambio** más configuraciones, establece si intercambiar héroes con compañeros de equipo en el modo de héroe aleatorio o intercambiar pisos (el orden en el que se seleccionan los héroes) y espacios preseleccionados con compañeros de equipo en el modo de reclutamiento.

*La configuración del intercambio de héroes y de posiciones es relativamente simple, por lo que no entraré en detalles aquí. *

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

En **Más configuraciones** de **Pisos de intercambio**, puede configurar el orden de intercambio (es decir, pisos) y el modo de intercambio.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*Modo de intercambio*:
- Solo orden objetivo: acepte solicitudes de compañeros de equipo consistentes con el *orden* especificado.
- Contiene prioridad de objetivo: aceptar solicitudes de compañeros de equipo ≤ el *orden* especificado.
- Orden de aplazamiento con objetivo: aceptar solicitudes de compañeros de equipo ≥ el *orden* especificado.
- Alcance basado en el orden objetivo: acepta solicitudes de compañeros de equipo con *orden* ≤ (*orden especificado* - *alcance*) y *orden* ≥ (*orden especificado* + *alcance*).

Además, hay dos opciones de intercambio de rechazo en **Otras configuraciones**. Cuando estos dos están habilitados,** si un compañero de equipo solicita intercambiar héroes contigo o selecciona una posición que no está dentro de las condiciones determinadas, la solicitud de intercambio será rechazada automáticamente. **De lo contrario** no se tomará ninguna medida. Puedes decidir si aceptas el cambio.

## Anti-abandono en pick/ban
Cuando esto esté habilitado, **Seleccionar héroe** o **Desactivar héroe** se ejecutará en el último segundo de la fase de BP.

>Puedes cambiar la configuración del modo de la función **Prohibir el retorno de héroes seleccionados** en la *Página de configuración de funciones*.

## Respuestas de ausencia
Este elemento de interruptor es el interruptor principal y es necesario realizar otras configuraciones. En la página de configuración **Más**, establece si deseas responder automáticamente a los mensajes de amigos o a las invitaciones a juegos al salir (estos están habilitados de forma predeterminada) y establece el contenido del texto de la respuesta.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## Ventana auxiliar
Cuando esté habilitado, se mostrará una **ventana adicional** durante algunas fases del cliente. Además, puedes hacer clic en el botón detrás de este interruptor para ingresar a la **Página de configuración** de la **Ventana adicional**, donde también puedes ver los **Atributos de equilibrio** (si los hay) del héroe en el modo de entretenimiento disponible actualmente y configurar la configuración de runas y la configuración independiente del cliente disponibles en cada modo.

**Ventana adicional** Página de configuración</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

>Si desea agregar o actualizar la configuración de runas del héroe en la **Página de configuración de runas**, debe seleccionar una página de runas en **Colecciones - Runas** en el cliente del juego, editarla y guardarla, cambiar las habilidades del invocador desde la esquina superior derecha y presionar el botón **Agregar configuración** o el botón *Actualizar la configuración actual del juego a esta configuración* en el **Elemento de configuración de runas** que se actualizará para agregar o actualizar la configuración de runas.

**Ventana adicional**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## Cerrar juego auto.
Simple y directo, el proceso del juego se cierra automáticamente cuando se reproduce la animación del final del cristal al final del juego.

## Reconectar auto.
Intenta volver a conectarte cuando el juego necesite volver a conectarse.

## Carta automática (extensión)
Cuando el héroe actualmente en el juego es un maestro de cartas, usa las teclas Z/X/C para seleccionar automáticamente cartas azules/rojas/amarillas.

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

>Esta función se implementa mediante procesamiento de gráficos y simulación de teclado. Sólo prueba las dos resoluciones más utilizadas (1920x1080/2560x1440). Otras resoluciones no se pueden utilizar normalmente sin una configuración automática (especialmente resoluciones distintas a la relación de escala 16:9). La detección permite un cierto rango de filtro, pero se recomienda no encender el filtro cuando se utiliza esta función para evitar invalidar una determinada detección.

---

# Extensiones (terceros)

>El contenido descrito en esta sección es mantenido por Tudorose, no por el autor anfitrión. El host `LOLAutomationTools` y su configuración original (`Config/`) son propiedad de © Lianxin, y este repositorio no realiza ninguna modificación sobre ellos.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## Módulos

|módulo|explicación de una frase|Detalles|
|---|---|---|
| **VoiceModule** |Mantén presionada la tecla de acceso directo para hablar y el texto se enviará al chat del juego después del reconocimiento local.| [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** |Injerte la ventana de registro OP.GG de Seraphine en la página "Funciones extendidas"| [opgg-launcher/README.md](opgg-launcher/README.md) |

## Inicio rápido

### 1. Prepara el anfitrión
Descargue `LOLAutomationTools` (≥ 2.9.801) desde [página de lanzamiento ascendente] (https://github.com/Seraph1ne/LOLAutomationTools/releases) y extráigalo a cualquier directorio, que se registrará como `<宿主目录>` a continuación.
Este repositorio **no distribuye** programas host.

### 2. Descarga el modelo de voz.
VoiceModule requiere un modelo ASR en formato sherpa-onnx (aproximadamente 254 MB). Este repositorio **no distribuye** el modelo. Para conocer la dirección de descarga y el diseño del directorio, consulte [voice-module/README.md → Descarga de modelo](voice-module/README.md#模型下载).

### 3. Instalación con un clic
Ejecute (PowerShell) en el directorio raíz de este almacén:
```powershell
.\scripts\install.ps1 -HostDir <宿主目录> -ModelDir <解压好的模型目录>
```
Opciones:
```powershell
-WithOpgg -SeraphineDir <Seraphine 目录>    # 同时安装 OP.GG launcher
-VoiceZip <本地 zip>                          # 离线安装，跳过下载
```
El script automáticamente: Descargar versión `VoiceModule-latest.zip` → Detener el host → Copiar dll/pdb → Escribir `exe.config` (existe sin sobrescribir) → Colocar la configuración predeterminada en `Extend/` (ya existe sin sobrescribir) → Copiar el modelo.

### 4. Habilitar
Inicie `LOLAutomationTools.exe` → **Funciones extendidas** a la izquierda → **Agrupación de voz** → Active el interruptor **Voz a texto**. Mantenga presionado `空格` para hablar, suelte para enviar al chat del equipo.

## Descarga

|documento|ilustrar|
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) |Módulo compilado + configuración predeterminada (~275 KB)|

## Licencia

|contenido|licencia|
|---|---|
| `voice-module/`、`opgg-launcher/launcher.py`、`scripts/` | [MIT](LICENSE) |
|`Config/`, `README.md` Primera mitad (presenta contenido original)|© Lian Xin, propiedad de Upstream|
|`LOLAutomationTools.exe` y las bibliotecas que lo acompañan|© Lian Xin, **no distribuido en este repositorio**|
|Seraphine (dependencia del iniciador OP.GG)|[GPL-3.0](https://github.com/ZhangBin-000/Seraphine), **no distribuido en este repositorio**|
|Tiempo de ejecución sherpa-onnx/modelo ASR|[Apache-2.0](https://github.com/k2-fsa/sherpa-onnx), **no distribuido en este repositorio**|

## Agradecimientos
- [Seraph1ne/LOLAutomationTools](https://github.com/Seraph1ne/LOLAutomationTools) —— Programa anfitrión
- [ZhangBin-000/Seraphine](https://github.com/ZhangBin-000/Seraphine) —— Fuente de la ventana OP.GG
- [k2-fsa/sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx) —— Reconocimiento de voz sin conexión

