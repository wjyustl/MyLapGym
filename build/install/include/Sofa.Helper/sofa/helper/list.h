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
#ifndef SOFA_HELPER_LIST_H
#define SOFA_HELPER_LIST_H


#include <sofa/helper/config.h>


/// adding string serialization to std::list to make it compatible with Data
/// \todo: refactoring of the containers required
/// More info PR #113: https://github.com/sofa-framework/sofa/pull/113


namespace std
{

/// Output stream
template<class T>
std::ostream& operator<< ( std::ostream& os, const std::list<T>& l )
{
    if( !l.empty() )
    {
        typename std::list<T>::const_iterator i=l.begin(), iend=l.end();
        os << *i;
        ++i;
        for( ; i!=iend; ++i )
            os << ' ' << *i;
    }
    return os;
}

/// Input stream
template<class T>
std::istream& operator>> ( std::istream& in, std::list<T>& l )
{
    T t {};
    l.clear();
    while(in>>t)
        l.push_back(t);
    if( in.rdstate() & std::ios_base::eofbit ) { in.clear(); }
    return in;
}


} // namespace std

#endif
