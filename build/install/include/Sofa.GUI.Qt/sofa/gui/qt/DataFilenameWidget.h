/******************************************************************************
*                 SOFA, Simulation Open-Framework Architecture                *
*                    (c) 2006 INRIA, USTL, UJF, CNRS, MGH                     *
*                                                                             *
* This program is free software; you can redistribute it and/or modify it     *
* under the terms of the GNU General Public License as published by the Free  *
* Software Foundation; either version 2 of the License, or (at your option)   *
* any later version.                                                          *
*                                                                             *
* This program is distributed in the hope that it will be useful, but WITHOUT *
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or       *
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for    *
* more details.                                                               *
*                                                                             *
* You should have received a copy of the GNU General Public License along     *
* with this program. If not, see <http://www.gnu.org/licenses/>.              *
*******************************************************************************
* Authors: The SOFA Team and external contributors (see Authors.txt)          *
*                                                                             *
* Contact information: contact@sofa-framework.org                             *
******************************************************************************/
#pragma once
#include <QLineEdit>
#include <QPushButton>
#include <QHBoxLayout>

#include "DataWidget.h"


namespace sofa::gui::qt
{

class DataFileNameWidget : public TDataWidget<std::string>
{
    Q_OBJECT
public:

    DataFileNameWidget(
        QWidget* parent,
        const char* name,
        core::objectmodel::Data<std::string>* data):
        TDataWidget<std::string>(parent,name,data) {}

    virtual bool createWidgets();
    virtual void setDataReadOnly(bool readOnly);
protected:
    ///Implements how update the widgets knowing the data value.
    virtual void readFromData();
    ///Implements how to update the data, knowing the widget value.
    virtual void writeToData();

    QLineEdit* openFilePath;
    QPushButton* openFileButton;

protected slots :
    virtual void raiseDialog();
};

} // namespace sofa::gui::qt
