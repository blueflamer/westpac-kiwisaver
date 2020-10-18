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
    Note: Installation will take awhile, additional dev kit will be installed asking to select options as appriopiate. When unsure, about the options, hit <Enter> key.

2. Confirm installation by running
    \
    ruby -v
    \
    expected output: ruby 2.7.2p137

3. Install bundler via the following command:
    
    gem install bundler

    expected output something like: Successfully installed bundler, 1 gem installed

5. Clone this project in workspace via the following command:

    git clone https://github.com/blueflamer/westpac-kiwisaver.git

6. After successful clone, change to project directory:
    cd westpace-kiwisaver


7. Install all Ruby Gems via the following command:

    bundle install




Platform Setup:

Windows 10:

macOS:

Docker:


Running a Scenario:
**Might need to enable network access on Windows when notified by the OS


Reporting:

cucumber features/calculator_ui.feature -f pretty -f html -o report.html





FAQ - Common Issues

Siteprism conflicts: sudo gem uninstall site_prism  
