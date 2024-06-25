QT += core gui sql multimedia testlib

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    GameManager.cpp \
    ai_or_2.cpp \
    game_or_history.cpp \
    gameai.cpp \
    gamewindow1.cpp \
    main.cpp \
    mainwindow.cpp \
    register_dialog.cpp

HEADERS += \
    GameManager.h \
    Register.h \
    ai_or_2.h \
    game_or_history.h \
    gameai.h \
    gamewindow1.h \
    globals.h \
    mainwindow.h \
    register_dialog.h

FORMS += \
    ai_or_2.ui \
    game_or_history.ui \
    gameai.ui \
    gamewindow1.ui \
    mainwindow.ui \
    register_dialog.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    res.qrc

DISTFILES += \
    qmakewithsounds.pro.user \
    tst_ailogic.qml \
    tst_gamelogic.qml \
    tst_gui.qml

# Test case directories
SUBDIRS += tests
# Add debug and release build configurations
CONFIG(debug, debug|release) {
    DESTDIR = $$PWD/debug
    OBJECTS_DIR = $$PWD/debug/obj
    MOC_DIR = $$PWD/debug/moc
    RCC_DIR = $$PWD/debug/rcc
    UI_DIR = $$PWD/debug/ui
} else {
    DESTDIR = $$PWD/release
    OBJECTS_DIR = $$PWD/release/obj
    MOC_DIR = $$PWD/release/moc
    RCC_DIR = $$PWD/release/rcc
    UI_DIR = $$PWD/release/ui
}
