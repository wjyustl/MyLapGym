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
#include <QColorDialog>
#include <QPainter>
#include <QStyle>
#include <QCheckBox>
#include <QComboBox>
#include <QColor>
#include <QPixmap>
#include <QLineEdit>
#include <QGridLayout>
#include <QHBoxLayout>
#include <QVBoxLayout>
#include <QLabel>
#include <QValidator>
#include <QColorDialog>

#include <sofa/type/RGBAColor.h>

#include "QRGBAColorPicker.h"
#include "DataWidget.h"

namespace sofa::gui::qt::rgbacolordatawidget_h
{
using sofa::type::RGBAColor ;
using sofa::core::objectmodel::Data ;
using sofa::gui::qt::QRGBAColorPicker ;

class RGBAColorDataWidget : public TDataWidget<RGBAColor>
{
    Q_OBJECT

public:
    RGBAColorDataWidget(QWidget* parent,
                        const char* name,
                        Data<RGBAColor>* data):
        TDataWidget<RGBAColor>(parent,name,data) {}

    virtual bool createWidgets();
    virtual void setDataReadOnly(bool readOnly);
    virtual unsigned int numColumnWidget() {return 1;}

protected:
    virtual void readFromData();
    virtual void writeToData();
    QLineEdit* m_nameEdit;
    QRGBAColorPicker* m_colorPicker;
};

} // namespace sofa::gui::qt::rgbacolordatawidget_h

namespace sofa::gui::qt
{
    using sofa::gui::qt::rgbacolordatawidget_h::RGBAColorDataWidget;
} // namespace sofa::gui::qt
