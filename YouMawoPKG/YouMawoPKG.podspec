{\rtf1\ansi\ansicpg1252\cocoartf2577
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26 \cf0 \expnd0\expndtw0\kerning0
Pod::Spec.new do |s|\
  s.name             = 'LBTATools'\
  s.version          = '1.0.12'\
  s.summary          = 'Set of tools to drastically improve development speed of UI in iOS applications'\
\
  s.description      = \'91test YouMawoPackage\'91\
\
  s.homepage         = 'https://github.com/ostapvisualise/YouMawoPKG.git'\
  s.license          = \{ :type => 'MIT', :file => 'LICENSE' \}\
  s.author           = \{ \'91MSHAKH\'92 => \'91mshah@tsukat.com \}\
  s.source           = \{ :git => 'https://github.com/ostapvisualise/YouMawoPKG.git', :tag => s.version.to_s \}\
  \
  s.ios.deployment_target = '9.0'\
\
  s.source_files = 'Source/**/*.swift'\
  s.swift_version = '5.0'\
  s.platforms = \{\
    "ios": "9.0"\
  \}\
end}