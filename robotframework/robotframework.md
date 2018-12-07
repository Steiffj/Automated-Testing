# Robot Framework Notes

## Configuration
* OS: Windows Pro 10 64-bit
* I am Using the Nokia RED IDE (the standalone version), which is available [on GitHub](https://github.com/nokia/RED)
  * [RED download page](https://github.com/nokia/RED/releases/tag/0.8.9)
* I Installed Anaconda for Python 3.7.0 64-bit to have access to more Python libraries, although that should not be necessary for RF.
* Using the Selenium library for RF requires a web driver for each browser being tested. You can find links to these web drivers at [seleniumhq.org](https://www.seleniumhq.org/download/).

## Use Cases
There are testing libraries that allow Robot Framework to a wide variety of testing scenarios.
* See [pypi.org](https://pypi.org/search/?q=robotframework) for many of these libraries. I have listed some specific libraries of note below. All these libraries are installed using PIP.
  * [SeleniumLibrary](https://pypi.org/project/robotframework-seleniumlibrary/) - web testing library. This is the first library I am working with alonside RF as it is one of the easier to research and test.
  * [AutoItLibrary](https://pypi.org/project/robotframework-autoitlibrary/) - allows automated testing (and installation processes) for Windows GUI programs, such as WinForms.
  * [OracleDB](https://pypi.org/project/robotframework-oracledb/) - library for working with Oracle databases.
