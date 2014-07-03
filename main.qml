import QtQuick 2.1
import StringFilterModel 1.0

Item {
    id: window
    width: 500;
    height: 500;

    ListModel {
        id: userModel
    }

    ListView {
        model: StringFilterModel {
            // source: userModel // <- this works
            // sourceModel: userModel // <- this doesn't (assert), despite the metatype being registered
            // sourceModel: ListModel { // <- this doesn't work either, but crashes -- no assert
            // }
        }
    }
}

