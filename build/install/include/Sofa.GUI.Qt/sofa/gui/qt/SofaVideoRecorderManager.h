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
#include <ui_VideoRecorderManager.h>
#include <sofa/gui/qt/config.h>

#include <vector>

#include <QComboBox>
#include <QSpinBox>
#include <QLabel>
#include <QCheckBox>

namespace sofa::gui::qt
{

class CaptureOptionsWidget : public QWidget
{
    Q_OBJECT
public:

    CaptureOptionsWidget( QWidget * parent = nullptr);

    QSpinBox* framerateSpinBox;
    QCheckBox* realtimeCheckBox;
    QSpinBox* frameskipSpinBox;
};

class MovieOptionsWidget : public QWidget
{
    Q_OBJECT
public:
    //Codec = <extension, description>
    struct Codec
    {
        std::string extension;
        std::string codec;
        std::string description;
        Codec(std::string e, std::string c, std::string d) : extension(e), codec(c), description(d) {}
        Codec(std::string e, std::string d) : extension(e), codec(), description(d) {}
    };


    MovieOptionsWidget( QWidget * parent = nullptr);

    QComboBox* codecComboBox;
    QSpinBox* bitrateSpinBox;

    std::vector< Codec > listCodecs;
};

class SofaVideoRecorderManager: public QDialog, public Ui_VideoRecorderManager
{
    Q_OBJECT
public:
    enum RecordingType { SCREENSHOTS, MOVIE };

    SofaVideoRecorderManager(QWidget *parent = Q_NULLPTR);

    static SofaVideoRecorderManager* getInstance()
    {
        static SofaVideoRecorderManager instance;
        return &instance;
    }

    void updateContent();
    std::string getCodecExtension();
    std::string getCodecName();
    unsigned int getFramerate();
    unsigned int getBitrate();
    bool realtime();
    unsigned int getFrameskip();
    RecordingType getRecordingType() { return currentRecordingType; }

    //helper function
    static void internalAddWidget(QWidget* parent, QWidget* widgetToAdd);

public slots:
    virtual void onChangeRecordingType();
    virtual void close();

protected:
    RecordingType currentRecordingType;

    CaptureOptionsWidget* captureOptionsWidget;
    MovieOptionsWidget* movieOptionsWidget;
    QWidget* screenshotsOptionsWidget;
};

} // namespace sofa::gui::qt
