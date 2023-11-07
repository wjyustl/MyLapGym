/******************************************************************************
*                 SOFA, Simulation Open-Framework Architecture                *
*                    (c) 2006 INRIA, USTL, UJF, CNRS, MGH                     *
*                                                                             *
* This program is free software; you can redistribute it and/or modify it     *
* under the terms of the GNU Lesser General Public License as published by    *
* the Free Software Foundation; either version 2.1 of the License, or (at     *
* your option) any later version.                                             *
*                                                                             *
* This program is distributed in the hope that it will be useful, but WITHOUT *
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or       *
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License *
* for more details.                                                           *
*                                                                             *
* You should have received a copy of the GNU Lesser General Public License    *
* along with this program. If not, see <http://www.gnu.org/licenses/>.        *
*******************************************************************************
* Authors: The SOFA Team and external contributors (see Authors.txt)          *
*                                                                             *
* Contact information: contact@sofa-framework.org                             *
******************************************************************************/
/*****************************************************************************
* User of this library should read the documentation
* in the messaging.h file.
******************************************************************************/
#ifndef CONSOLEMESSAGEHANDLER_H
#define CONSOLEMESSAGEHANDLER_H

#include <sofa/helper/logging/MessageHandler.h>
#include <sofa/helper/config.h>

namespace sofa::helper::logging
{

class MessageFormatter;

/// Print the message on the console using a specified formatter.
/// The Message::Error, Message::Fatal are going to std:cerr while the others
/// are going to std::cout.
class SOFA_HELPER_API ConsoleMessageHandler : public MessageHandler
{
public:
    /// Create a new ConsoleMessageHandler. By default the handler is using the
    /// DefaultStyleMessageFormatter object to format the message.
    ConsoleMessageHandler(MessageFormatter* formatter = nullptr);
    void process(Message &m) override ;
    void setMessageFormatter( MessageFormatter* formatter );

private:
    MessageFormatter    *m_formatter;

};

///
/// \brief The MainConsoleMessageHandler class contains a singleton to ConsoleMessageHandler
/// and offer static version of ConsoleMessageHandler API
///
/// \see ConsoleMessageHandler
///
class SOFA_HELPER_API MainConsoleMessageHandler
{
public:
    static ConsoleMessageHandler& getInstance() ;
};
} // namespace sofa::helper::logging

#endif // CONSOLEMESSAGEHANDLER_H
