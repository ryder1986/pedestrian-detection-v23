#-------------------------------------------------
#
# Project created by QtCreator 2018-01-11T14:34:08
#
#-------------------------------------------------
include(../pedestrian-detection.pri)
QT       -= gui

TARGET = Alg
TEMPLATE = lib

DEFINES += ALG_LIBRARY

SOURCES += alg.cpp

HEADERS += alg.h\
        alg_global.h

#unix {
#    target.path = /usr/lib
#    INSTALLS += target
#}
unix {
    target-inc.path = $$ALGPATH/include
    target-inc.files =alg.h alg_global.h
    INSTALLS += target-inc

    target-lib.path = $$ALGPATH/lib
    target-lib.files = $$OUT_PWD/libAlg.so*
    INSTALLS += target-lib
}

