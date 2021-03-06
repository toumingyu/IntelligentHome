TEMPLATE = app

QT += qml quick

SOURCES += main.cpp \
    src/utility.cpp \
    src/starencryption.cpp

RESOURCES += qml.qrc images.qrc

INCLUDEPATH += src
# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    src/utility.h \
    src/starencryption.h

android {
    ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android-sources

    DEFINES += Q_OS_ANDROID

    QT += androidextras

    HEADERS += src/com_rainystar_intelligenthome_Communication.h

    DISTFILES += \
        android-sources/src/com/rainystar/intelligenthome/NativeAPI.java \
        android-sources/res/layout/notify.xml \
        android-sources/src/com/rainystar/intelligenthome/BackService.java \
        android-sources/src/com/rainystar/intelligenthome/Communication.java
}

DISTFILES += \
    android-sources/AndroidManifest.xml
