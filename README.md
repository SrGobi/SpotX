  <p align="center">
  <a href="https://github.com/SrGobi/SpotX/releases"><img src="https://github.com/SrGobi/SpotX/raw/main/.github/Pic/logo.png" />
</p>

<h2> <div align="center"><b> Modified Spotify Client for Windows </b></div> </h2>

<h1>System requirements</h1>

- <strong>OS: Windows 7-11</strong>
- <strong>Spotify: Recommended official version [1.1.93.896](https://cutt.ly/8EH6NuH)</strong>
- <strong>Solo para escritorio de Windows (la versión de la tienda de Microsoft no es adecuada).</strong>
- <strong>PowerShell: 3 o superior</strong>

<h1>Características</h1>

- <strong>Bloquea todos los anuncios publicitarios, de video y de audio en el cliente</strong>
- <strong>Desbloquea la función de salto de cualquier pista</strong>
- <strong>Modo de pantalla completa activado</strong>
- <strong>Podcasts y episodios ocultos de la página de inicio (opcional)</strong>
- <strong>Bloquea actualizaciones automáticas (opcional)</strong>
- <strong>[Borrado de caché] automático (https://github.com/SrGobi/SpotX/discussions/1) (opcional)</strong>
- <strong>Habilitado [mejorar lista de reproducción](https://github.com/SrGobi/SpotX/discussions/2)</strong>
- <strong>Habilitado [mejorar la interfaz de usuario de canciones favoritas](https://github.com/SrGobi/SpotX/discussions/2)</strong>
- <strong>Habilitado [nueva letra](https://github.com/SrGobi/SpotX/discussions/2)</strong>
- <strong>Habilitado [un estante de discografía condensada en las páginas de los artistas](https://github.com/SrGobi/SpotX/discussions/2)</strong>
- <strong>Habilitado [Ignorar en recomendaciones](https://github.com/SrGobi/SpotX/discussions/2)</strong>
- <strong>Habilitado [Ecualizador](https://github.com/SrGobi/SpotX/discussions/2)</strong>
- <strong>Habilitado [nuevo panel de selección de dispositivos](https://github.com/SrGobi/SpotX/discussions/2)</strong>
- <strong>Activado ["Hecho para ti" en la barra lateral izquierda](https://github.com/SrGobi/SpotX/discussions/2)</strong>
- <strong>Sentry deshabilitado (Evitado que Sentry envíe el registro/error/advertencia de la consola a los desarrolladores de Spotify)</strong>
- <strong>Registro deshabilitado (se detuvieron varios elementos para registrar la interacción del usuario)</strong>
- <strong>Se eliminaron las reglas RTL (se eliminaron todas las reglas CSS de derecha a izquierda para simplificar los archivos CSS)</strong>
- <strong>minificación de código</strong>

<h1>Rápida instalación / Actualización</h1>
<h3>Elija el tipo de instalación:</h3>
<details>
<summary><small>Instalación habitual</small></summary><p>
  
  #### Durante la instalación, debe confirmar algunas acciones, también contiene:

- Todas las [características experimentales](https://github.com/SrGobi/SpotX/discussions/2) incluido

  <h4> </h4>

#### Solo descarga y ejecuta [Install.bat](https://raw.githack.com/SrGobi/SpotX/main/Install.bat)

o

#### Ejecute el siguiente comando en PowerShell:

```ps1
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; (iwr -useb 'https://raw.githubusercontent.com/SrGobi/SpotX/main/Install.ps1').Content | iex
```

</details>
  
<details>
<summary><small>Instalación básica automática</small></summary><p>
  
  #### Automatic basic installation without confirmation, what does it do? 
  
  - Eliminación automática de Spotify MS si se encuentra
  - Instalación automática de la versión recomendada de Spotify (si ya se ha encontrado otro cliente, se instalará encima)
  - Una vez completada la instalación, el cliente se ejecutará automáticamente
  
<h4> </h4>

#### Solo descarga y ejecuta [Install_Basic.bat](https://raw.githack.com/SrGobi/SpotX/main/scripts/Install_Basic.bat)

o

#### Ejecute el siguiente comando en PowerShell:

```ps1
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; iex "& { $((iwr -useb 'https://raw.githubusercontent.com/SrGobi/SpotX/main/Install.ps1').Content) } -confirm_uninstall_ms_spoti -confirm_spoti_recomended_over -podcasts_on -cache_off -block_update_off -exp_standart -hide_col_icon_off -start_spoti"
```

</details>
  
<details>
<summary><small>Instalación completa automática</small></summary><p>
  
  <h4>Instalación automática sin confirmación, ¿qué hace?</h4> 
  
  - Eliminación automática de Spotify MS si se encuentra
  - Instalación automática de la versión recomendada de Spotify (si ya se ha encontrado otro cliente, se instalará encima)
  - Eliminación de podcasts de la página principal
  - Bloqueo automático de actualizaciones de Spotify
  - Todas las [características experimentales](https://github.com/SrGobi/SpotX/discussions/2) incluido
  - Una vez completada la instalación, el cliente se ejecutará automáticamente.
  
<h4> </h4>

#### Solo descarga y ejecuta [Install_Auto.bat](https://raw.githack.com/SrGobi/SpotX/main/scripts/Install_Auto.bat)

o

#### Ejecute el siguiente comando en PowerShell:

```ps1
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; iex "& { $((iwr -useb 'https://raw.githubusercontent.com/SrGobi/SpotX/main/Install.ps1').Content) } -confirm_uninstall_ms_spoti -confirm_spoti_recomended_over -podcasts_off -cache_off -block_update_on -start_spoti"
```

</details>
<details>
<summary><small>Instalación con Scoop</small></summary><p>
  
  #### La instalación de SpotX a través del administrador de paquetes Scoop incluye:

- Eliminación automática de Spotify MS si se encuentra
- Instalación automática de la versión recomendada de Spotify (si ya se ha encontrado otro cliente, se instalará encima)
- Eliminación de podcasts de la página principal
- Bloqueo automático de actualizaciones de Spotify
- Todas las [características experimentales](https://github.com/SrGobi/SpotX/discussions/2) incluido

  <h4> </h4>

#### Instalación de SpotX con Scoop

Simplemente ejecute estos comandos en el símbolo del sistema o powershell:
<br>
<br>`scoop bucket add nonportable`
<br>`scoop install spotx-np`

#### Actualización de SpotX con Scoop

Para actualizar SpotX o buscar actualizaciones, ejecute este comando en el símbolo del sistema o PowerShell:

`scoop update spotx-np`

#### Desinstalar SpotX con Scoop

Para desinstalar por completo SpotX y Spotify, ejecute este comando en el símbolo del sistema o PowerShell:

`scoop uninstall spotx-np`

</details>

<details>
<summary><small>Instalación para prima</small></summary><p>
  
  #### La instalación habitual solo sin bloqueo de anuncios, para aquellos que tienen una cuenta premium, también contiene:

- Todas las [características experimentales](https://github.com/SrGobi/SpotX/discussions/2) incluido

  <h4> </h4>

#### Solo descarga y ejecuta [Install_Prem.bat](https://raw.githack.com/SrGobi/SpotX/main/scripts/Install_Prem.bat)

o

#### Ejecute el siguiente comando en PowerShell:

```ps1
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; iex "& { $((iwr -useb 'https://raw.githubusercontent.com/SrGobi/SpotX/main/Install.ps1').Content) } -premium"
```

</details>

<details>
<summary><small>Instalación con parámetros</small></summary><p>

Puede especificar varios parámetros para una instalación más flexible, más [detalles aquí](https://github.com/SrGobi/SpotX/discussions)

</details>

<h1>Desinstalar</h1>

- Solo inicia [Uninstall.bat](https://raw.githack.com/SrGobi/SpotX/main/Uninstall.bat)

or

- Reinstalar Spotify ([Desinstalación completa de Spotify](https://github.com/SrGobi/Uninstall-Spotify) recomendado)

<h1>FAQ</h1>

- Leer [FAQ](https://github.com/SrGobi/SpotX/discussions)

<h1>Creditos</h1>

- El repositorio se basa en <a href="https://github.com/mrpond/BlockTheSpot">BlockTheSpot</a>, y también se tomaron algunos trucos de <a href="https://github.com/khanhas/spicetify-cli">spicetify-cli</a>, muchas gracias a los contribuyentes
