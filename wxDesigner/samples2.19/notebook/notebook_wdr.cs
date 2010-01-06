//-----------------------------------------------------------------------------
// C# source generated by wxDesigner from file: notebook.wdr
// Do not modify this file, all changes will be lost!
//-----------------------------------------------------------------------------

using System;
using System.Drawing;
using wx;

public class notebookWdrClass
{
   // Window functions

    public const int ID_TEXTCTRL = 10000;

    public static Sizer PageOneFunc( Window parent )
    { return PageOneFunc( parent, true, true ); }

    public static Sizer PageOneFunc( Window parent, bool call_fit )
    { return PageOneFunc( parent, call_fit, true ); }

    public static Sizer PageOneFunc( Window parent, bool call_fit, bool set_sizer )
    {
        BoxSizer item0 = new BoxSizer( Orientation.wxVERTICAL );
    
        TextCtrl item1 = new TextCtrl( parent, ID_TEXTCTRL, "", Window.wxDefaultPosition, new Size(200,-1), 0 );
        item0.Add( item1, 0, Alignment.wxALIGN_CENTER|Direction.wxALL, 20 );

        TextCtrl item2 = new TextCtrl( parent, ID_TEXTCTRL, "", Window.wxDefaultPosition, new Size(200,90), TextCtrl.wxTE_MULTILINE );
        item0.Add( item2, 0, Alignment.wxALIGN_CENTER|Direction.wxALL, 20 );

        if (set_sizer)
        {
            parent.SetSizer( item0 );
            if (call_fit)
                item0.SetSizeHints( parent );
        }
        
        return item0;
    }

    public const int ID_CHECKBOX = 10001;
    public const int ID_BUTTON = 10002;

    public static Sizer PageTwoFunc( Window parent )
    { return PageTwoFunc( parent, true, true ); }

    public static Sizer PageTwoFunc( Window parent, bool call_fit )
    { return PageTwoFunc( parent, call_fit, true ); }

    public static Sizer PageTwoFunc( Window parent, bool call_fit, bool set_sizer )
    {
        BoxSizer item0 = new BoxSizer( Orientation.wxVERTICAL );
    
        StaticBox item2 = new StaticBox( parent, -1, "Checks" );
        StaticBoxSizer item1 = new StaticBoxSizer( item2, Orientation.wxHORIZONTAL );
    
        CheckBox item3 = new CheckBox( parent, ID_CHECKBOX, "Check", Window.wxDefaultPosition, Window.wxDefaultSize, 0 );
        item1.Add( item3, 0, Alignment.wxALIGN_CENTER|Direction.wxALL, 5 );

        CheckBox item4 = new CheckBox( parent, ID_CHECKBOX, "Check", Window.wxDefaultPosition, Window.wxDefaultSize, 0 );
        item1.Add( item4, 0, Alignment.wxALIGN_CENTER|Direction.wxALL, 5 );

        CheckBox item5 = new CheckBox( parent, ID_CHECKBOX, "Check", Window.wxDefaultPosition, Window.wxDefaultSize, 0 );
        item1.Add( item5, 0, Alignment.wxALIGN_CENTER|Direction.wxALL, 5 );

        item0.Add( item1, 0, Alignment.wxALIGN_CENTER|Direction.wxALL, 5 );

        StaticBox item7 = new StaticBox( parent, -1, "Buttons" );
        StaticBoxSizer item6 = new StaticBoxSizer( item7, Orientation.wxVERTICAL );
    
        Button item8 = new Button( parent, ID_BUTTON, "OK", Window.wxDefaultPosition, Window.wxDefaultSize, 0 );
        item6.Add( item8, 0, Alignment.wxALIGN_CENTER_VERTICAL|Direction.wxALL, 5 );

        Button item9 = new Button( parent, ID_BUTTON, "OK", Window.wxDefaultPosition, Window.wxDefaultSize, 0 );
        item6.Add( item9, 0, Alignment.wxALIGN_CENTER|Direction.wxALL, 5 );

        Button item10 = new Button( parent, ID_BUTTON, "OK", Window.wxDefaultPosition, Window.wxDefaultSize, 0 );
        item6.Add( item10, 0, Stretch.wxGROW|Alignment.wxALIGN_CENTER_VERTICAL|Direction.wxALL, 5 );

        item0.Add( item6, 0, Stretch.wxGROW|Alignment.wxALIGN_CENTER_VERTICAL|Direction.wxALL, 5 );

        if (set_sizer)
        {
            parent.SetSizer( item0 );
            if (call_fit)
                item0.SetSizeHints( parent );
        }
        
        return item0;
    }

    public const int ID_NOTEBOOK = 10003;
    public const int ID_LINE = 10004;

    public static Sizer NotebookFunc( Window parent )
    { return NotebookFunc( parent, true, true ); }

    public static Sizer NotebookFunc( Window parent, bool call_fit )
    { return NotebookFunc( parent, call_fit, true ); }

    public static Sizer NotebookFunc( Window parent, bool call_fit, bool set_sizer )
    {
        BoxSizer item0 = new BoxSizer( Orientation.wxVERTICAL );
    
        Notebook item2 = new Notebook( parent, ID_NOTEBOOK, Window.wxDefaultPosition, new Size(200,160), 0 );
        NotebookSizer item1 = new NotebookSizer( item2 );

        Panel item3 = new Panel( item2, -1 );
        PageOneFunc( item3, false );
        item2.AddPage( item3, "Page 1" );

        Panel item4 = new Panel( item2, -1 );
        PageTwoFunc( item4, false );
        item2.AddPage( item4, "Page 2" );

        Panel item5 = new Panel( item2, -1 );
        item2.AddPage( item5, "Page 3" );

        item0.Add( item1, 0, Alignment.wxALIGN_CENTER|Direction.wxALL, 5 );

        StaticLine item6 = new StaticLine( parent, ID_LINE, Window.wxDefaultPosition, new Size(20,-1), StaticLine.wxLI_HORIZONTAL );
        item0.Add( item6, 0, Stretch.wxGROW|Alignment.wxALIGN_CENTER_VERTICAL|Direction.wxALL, 5 );

        BoxSizer item7 = new BoxSizer( Orientation.wxHORIZONTAL );
    
        Button item8 = new Button( parent, Window.wxID_OK, "OK", Window.wxDefaultPosition, Window.wxDefaultSize, 0 );
        item8.SetDefault();
        item7.Add( item8, 0, Alignment.wxALIGN_CENTER|Direction.wxALL, 5 );

        Button item9 = new Button( parent, Window.wxID_CANCEL, "Cancel", Window.wxDefaultPosition, Window.wxDefaultSize, 0 );
        item7.Add( item9, 0, Alignment.wxALIGN_CENTER|Direction.wxALL, 5 );

        item0.Add( item7, 0, Alignment.wxALIGN_CENTER|Direction.wxLEFT|Direction.wxRIGHT|Direction.wxBOTTOM, 5 );

        if (set_sizer)
        {
            parent.SetSizer( item0 );
            if (call_fit)
                item0.SetSizeHints( parent );
        }
        
        return item0;
    }

    // Menubar functions

    // Toolbar functions

    // Bitmap functions

}

// End of generated file
