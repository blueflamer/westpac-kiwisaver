Introduction
======

Following instructions are for setup of test automation framework.

Framework: Ruby, Cucumber, Selenium



\
Prerequisites
======
    
1. Minimum Windows 10 or macOS 

2. Chrome browser (tested with version 86)

3. Git (https://git-scm.com/download/win)

    \
    32-bit: https://github.com/git-for-windows/git/releases/download/v2.28.0.windows.1/Git-2.28.0-32-bit.exe
    
    \
    64-bit: https://github.com/git-for-windows/git/releases/download/v2.28.0.windows.1/Git-2.28.0-64-bit.exe


\
Installation
======

1. Install Ruby for Windows from: 
    \
    https://rubyinstaller.org/downloads/

    \
    64 bit - https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.7.2-1/rubyinstaller-devkit-2.7.2-1-x64.exe

    \
    32 bit -  https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.7.2-1/rubyinstaller-devkit-2.7.2-1-x86.exe


   \
    **Note:** _Installation will take awhile, additional dev kit will be installed asking to choose options as appropriate. When prompted and unsure about any options, hit <Enter> key and a default option will be selected._

2. After installation completes, open command prompt and confirm installation with this command:

    ```console
    ruby -v
    ```
    \
    Expected output:

    ```console
    ruby 2.7.2p137
    ```

3. Install bundler via the following command:
    ```console
    gem install bundler
    ```
    \
    You should get an output similar to:

    ```console
    Successfully installed bundler, 1 gem installed
    ```

5. Clone project in a working folder via the following command:
    ```console
    git clone https://github.com/blueflamer/westpac-kiwisaver.git
    ```

6. After successful clone, change to project directory:
    ```console
    cd westpace-kiwisaver
    ```

7. Install all Ruby Gems via the following command:
    ```console
    bundle install
    ```
    \
    **Note:** _Installation will take awhile_


\
Running Tests
======

**Enable network access on Windows when notified by the OS security feature.**

\
Type the following to run **_Test User Story 1_**
```console
    cucumber features/calculator_ui.feature -f pretty -f html -o story1.html
```

\
Type the following to run **_Test User Story 2_**
```console
    cucumber features/projected_balance.feature -f pretty -f html -o story2.html
```
\
Report
======
Reports [story1.html, story2.html including any screenshots] will appear in the root of **_westpace-kiwisaver_** folder.
