#-----------------------------------------------------------------------------
# Perl source generated by wxDesigner from file: toolbar.wdr
# Do not modify this file, all changes will be lost!
#-----------------------------------------------------------------------------

use Wx;
use strict;

use Wx qw( wxDefaultSize wxDefaultPosition wxID_OK wxID_SAVE wxID_SAVEAS wxID_CANCEL wxID_YES wxID_EXIT wxID_ABOUT wxID_HELP );
use Wx qw( wxVERTICAL wxHORIZONTAL wxALL wxLEFT wxRIGHT wxTOP wxBOTTOM wxCENTRE wxGROW wxADJUST_MINSIZE );
use Wx qw( wxALIGN_RIGHT wxALIGN_BOTTOM wxALIGN_CENTER wxALIGN_CENTER_VERTICAL wxALIGN_CENTER_HORIZONTAL );
use Wx qw( wxCB_DROPDOWN );

# Bitmap functions

use Wx qw( wxNullBitmap wxBITMAP_TYPE_PNG );


sub MyBitmapsFunc {
    if ($_[0] == 0) {
        my( $bitmap ) = Wx::Bitmap->new( "toolbar_wdr/MyBitmapsFunc_0.png", wxBITMAP_TYPE_PNG );
        return $bitmap;
    }
    if ($_[0] == 1) {
        my( $bitmap ) = Wx::Bitmap->new( "toolbar_wdr/MyBitmapsFunc_1.png", wxBITMAP_TYPE_PNG );
        return $bitmap;
    }
    if ($_[0] == 2) {
        my( $bitmap ) = Wx::Bitmap->new( "toolbar_wdr/MyBitmapsFunc_2.png", wxBITMAP_TYPE_PNG );
        return $bitmap;
    }
    if ($_[0] == 3) {
        my( $bitmap ) = Wx::Bitmap->new( "toolbar_wdr/MyBitmapsFunc_3.png", wxBITMAP_TYPE_PNG );
        return $bitmap;
    }
    if ($_[0] == 4) {
        my( $bitmap ) = Wx::Bitmap->new( "toolbar_wdr/MyBitmapsFunc_4.png", wxBITMAP_TYPE_PNG );
        return $bitmap;
    }
    if ($_[0] == 5) {
        my( $bitmap ) = Wx::Bitmap->new( "toolbar_wdr/MyBitmapsFunc_5.png", wxBITMAP_TYPE_PNG );
        return $bitmap;
    }
    wxNullBitmap;
}
# Window functions

# Menu bar functions

use vars qw($ID_MENU); $ID_MENU = 10000;

sub MyMenuBarFunc {
    my( $item0 ) = Wx::MenuBar->new();
    
    my( $item1 ) = Wx::Menu->new();
    $item1->AppendString( wxID_ABOUT, "About\tAlt-A", "" );
    $item1->AppendString( wxID_SAVE, "Save\tAlt-S", "" );
    $item1->AppendString( wxID_EXIT, "Quit\tAlt-Q", "" );
    $item0->Append( $item1, "File" );
    
    $item0;
}


# Toolbar functions

use vars qw($ID_OPEN); $ID_OPEN = 10001;
use vars qw($ID_CUT); $ID_CUT = 10002;
use vars qw($ID_COPY); $ID_COPY = 10003;
use vars qw($ID_PASTE); $ID_PASTE = 10004;
use vars qw($ID_FONT); $ID_FONT = 10005;

sub MyToolBarFunc {
    $_[0]->SetMargins( 2, 2 );
    
    $_[0]->AddTool( wxID_EXIT, MyBitmapsFunc( 0 ), wxNullBitmap, 0, undef, "Exit app", "Exit application" );
    $_[0]->AddSeparator();
    $_[0]->AddTool( $main::ID_OPEN, MyBitmapsFunc( 1 ), wxNullBitmap, 0, undef, "Open", "Open document" );
    $_[0]->AddTool( wxID_SAVE, MyBitmapsFunc( 5 ), wxNullBitmap, 0, undef, "Save", "Save document" );
    $_[0]->AddSeparator();
    $_[0]->AddTool( $main::ID_CUT, MyBitmapsFunc( 2 ), wxNullBitmap, 0, undef, "Cut", "Move to clipboard" );
    $_[0]->EnableTool( $main::ID_CUT, 0 );
    $_[0]->AddTool( $main::ID_COPY, MyBitmapsFunc( 3 ), wxNullBitmap, 0, undef, "Copy", "Copy to clipboard" );
    $_[0]->EnableTool( $main::ID_COPY, 0 );
    $_[0]->AddTool( $main::ID_PASTE, MyBitmapsFunc( 4 ), wxNullBitmap, 1, undef, "Paste", "Paste from clipboard" );
    $_[0]->ToggleTool( $main::ID_PASTE, 1 );
    $_[0]->AddSeparator();
    my( $item2 ) = Wx::ComboBox->new( $_[0], $main::ID_FONT, "", wxDefaultPosition, [150,-1], 
        ["Times New Roman","Arial","Courier"] , wxCB_DROPDOWN );
    $item2->SetToolTip( "This is a toolbar control" );
    $_[0]->AddControl( $item2 );
    
    $_[0]->Realize();
}


# End of generated file
