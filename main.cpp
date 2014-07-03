#include <QGuiApplication>
#include <QQuickView>
#include <QtQml>

#include "stringfiltermodel.h"

Q_DECL_EXPORT int main(int argc, char* argv[])
{
    QGuiApplication app(argc, argv);
    QQuickView viewer;

    qRegisterMetaType<QAbstractItemModel*>();
    qmlRegisterType<StringFilterModel>("StringFilterModel", 1, 0, "StringFilterModel");

    viewer.setSource(QUrl("/usr/share/harbour-communitest/qml/main.qml"));
    viewer.showFullScreen();

    return app.exec();
}
