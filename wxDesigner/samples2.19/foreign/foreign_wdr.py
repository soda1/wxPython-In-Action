# -*- coding: iso-8859-1 -*-

#-----------------------------------------------------------------------------
# Python source generated by wxDesigner from file: foreign.wdr
# Do not modify this file, all changes will be lost!
#-----------------------------------------------------------------------------

# Include wxWindows' modules
import wx
import wx.grid

# Window functions

ID_LISTCTRL = 10000
ID_LINE = 10001
wxID_OK = 5100

def MyDialogFunc( parent, call_fit = True, set_sizer = True ):
    item0 = wx.BoxSizer( wx.VERTICAL )
    
    item2 = wx.StaticBox( parent, -1, "wxListCtrl (as a foreign control)" )
    item1 = wx.StaticBoxSizer( item2, wx.HORIZONTAL )
    
    item3 = parent.FindWindowById( ID_LISTCTRL )
    item3.SetSize( [199, 199] )
    item1.Add( item3, 1, wx.GROW|wx.ALL, 5 )

    item0.Add( item1, 1, wx.GROW|wx.ALL, 5 )

    item4 = wx.StaticLine( parent, ID_LINE, wx.DefaultPosition, [20,-1], wx.LI_HORIZONTAL )
    item0.Add( item4, 0, wx.GROW|wx.ALIGN_CENTER_VERTICAL|wx.ALL, 5 )

    item5 = wx.Button( parent, wxID_OK, "OK", wx.DefaultPosition, wx.DefaultSize, 0 )
    item5.SetDefault()
    item0.Add( item5, 0, wx.ALIGN_CENTER|wx.LEFT|wx.RIGHT|wx.BOTTOM, 5 )

    if set_sizer == True:
        parent.SetSizer( item0 )
        if call_fit == True:
            item0.SetSizeHints( parent )
    
    return item0

# Menubar functions

# Toolbar functions

# Bitmap functions


# End of generated file
