[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]
<a href='https://coveralls.io/github/TirsvadCLI/Python.AnsiCode'>
<img src='https://coveralls.io/repos/github/TirsvadCLI/Python.AnsiCode/badge.svg' alt='Coverage Status' height="28"/>
</a>
<!-- REPLACE -->
<!-- Ansi code -->
<!-- ansi_code -->
<!-- TirsvadCLI/Python.AnsiCode -->

<!-- PROJECT LOGO -->
<br />
<div align="center">
    <a href="https://github.com/TirsvadCLI/Python.AnsiCode">
        <img src="https://github.com/TirsvadCLI/Python.AnsiCode/blob/main/images/logo.png" alt="Logo" width="80" height="80">
    </a>
    <h3 align="center">Ansi code</h3>
    <p align="center">
    <!-- PROJECT DESCRIPTION -->
    <br />
    <br />
    <!-- PROJECT SCREENSHOTS -->
    <!--
    <a href="https://github.com/TirsvadCLI/Python.AnsiCode/blob/main/images/screenshot01.png">
        <img src="images/screenshot01.png" alt="screenshot" width="120" height="120">
    </a>
    -->
    <br />
    <a href="https://github.com/TirsvadCLI/Python.AnsiCode"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/TirsvadCLI/Python.AnsiCode/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    ·
    <a href="https://github.com/TirsvadCLI/Python.AnsiCode/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>

  </p>
</div>

# Ansi code
Fast way to create color for terminal and moving the cursor. Make the code very readable.

<!-- PROJECT DESCRIPTION -->

# Getting Started

## Prerequisites

You have python 3 installed.

## Download and run

To download source code from github we can use a terminal.

### Winodws

```powershell
New-Item -Path ($(Get-Location  | Select-Object -ExpandProperty Path) -Name "ansi_code" -ItemType "directory"
Invoke-WebRequest https://github.com/TirsvadCLI/Python.AnsiCode/archive/refs/heads/main.zip -OutFile ansi_code.zip
Expand-Archive -Path Draftv2.zip -DestinationPath .\ansi_code
Get-Item "*ansi_code-*" | Rename-Item -NewName "ansi_code"
Set-Location .\ansi_code\srv\ansi_code
```

### Linux

```bash
mkdir ansi_code
curl -L https://api.github.com/repos/TirsvadCLI/Python.AnsiCode/tarball | tar -xz --strip-components=3 -C ansi_code
```

For run the application go to the folder ansi_code and run.

```bash
cd ansi_code
python3 main.py
```

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any
contributions you make are greatly appreciated.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also
simply open an issue with the tag "enhancement". Don't forget to give the project a star! Thanks again!

Fork the Project

<ol>
    <li>Fork the Project</li>
    <li>Create your Feature Branch</li>
    <li>Commit your Changes</li>
    <li>Push to the Branch</li>
    <li>Open a Pull Request</li>
</ol>

Example

```bash
git checkout -b feature
git commit -m 'Add my feature enhance to project'
git push origin feature
```

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/TirsvadCLI/Python.AnsiCode?style=for-the-badge
[contributors-url]: https://github.com/TirsvadCLI/Python.AnsiCode/graphs/contributors

[forks-shield]: https://img.shields.io/github/forks/TirsvadCLI/Python.AnsiCode?style=for-the-badge
[forks-url]: https://github.com/TirsvadCLI/Python.AnsiCode/network/members

[stars-shield]: https://img.shields.io/github/stars/TirsvadCLI/Python.AnsiCode?style=for-the-badge
[stars-url]: https://github.com/TirsvadCLI/Python.AnsiCode/stargazers

[issues-shield]: https://img.shields.io/github/issues/TirsvadCLI/Python.AnsiCode?style=for-the-badge
[issues-url]: https://github.com/TirsvadCLI/Python.AnsiCode/issues

[license-shield]: https://img.shields.io/github/license/TirsvadCLI/Python.AnsiCode?style=for-the-badge
[license-url]: https://github.com/TirsvadCLI/Python.AnsiCode/blob/master/LICENSE

[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/jens-tirsvad-nielsen-13b795b9/
