#-----------------------------------------------------------------------------
# Perl source generated by wxDesigner from file: notebook.wdr
# Do not modify this file, all changes will be lost!
#-----------------------------------------------------------------------------

use Wx;
use strict;

use Wx qw( wxDefaultSize wxDefaultPosition wxID_OK wxID_CANCEL wxID_YES wxID_EXIT wxID_ABOUT );
use Wx qw( wxVERTICAL wxHORIZONTAL wxALL wxLEFT wxRIGHT wxTOP wxBOTTOM wxCENTRE wxGROW wxADJUST_MINSIZE );
use Wx qw( wxALIGN_RIGHT wxALIGN_BOTTOM wxALIGN_CENTER wxALIGN_CENTER_VERTICAL wxALIGN_CENTER_HORIZONTAL );
use Wx qw( wxTE_MULTILINE wxLI_HORIZONTAL );

# Bitmap functions

use Wx qw( wxNullBitmap wxBITMAP_TYPE_PNG );

# Window functions

use vars qw($ID_TEXTCTRL); $ID_TEXTCTRL = 10000;

sub PageOneFunc {
    my( $item0 ) = Wx::BoxSizer->new( wxVERTICAL );
    
    my( $item1 ) = Wx::TextCtrl->new( $_[0], $main::ID_TEXTCTRL, "", wxDefaultPosition, [200,-1], 0 );
    $item0->AddWindow( $item1, 0, wxALIGN_CENTER|wxALL, 20 );

    my( $item2 ) = Wx::TextCtrl->new( $_[0], $main::ID_TEXTCTRL, "", wxDefaultPosition, [200,90], wxTE_MULTILINE );
    $item0->AddWindow( $item2, 0, wxALIGN_CENTER|wxALL, 20 );

    my( $set_size ) = @_ >= 3 ? $_[2] : 1;
    my( $call_fit ) = @_ >= 2 ? $_[1] : 1;
    if( $set_size == 1 ) {
         $_[0]->SetSizer( $item0 );
         
         if( $call_fit == 1 ) {
             $item0->SetSizeHints( $_[0] );
         }
    }
    
    $item0;
}

use vars qw($ID_CHECKBOX); $ID_CHECKBOX = 10001;
use vars qw($ID_BUTTON); $ID_BUTTON = 10002;

sub PageTwoFunc {
    my( $item0 ) = Wx::BoxSizer->new( wxVERTICAL );
    
    my( $item2 ) = Wx::StaticBox->new( $_[0], -1, "Checks" );
    my( $item1 ) = Wx::StaticBoxSizer->new( $item2, wxHORIZONTAL );
    
    my( $item3 ) = Wx::CheckBox->new( $_[0], $main::ID_CHECKBOX, "Check", wxDefaultPosition, wxDefaultSize, 0 );
    $item1->AddWindow( $item3, 0, wxALIGN_CENTER|wxALL, 5 );

    my( $item4 ) = Wx::CheckBox->new( $_[0], $main::ID_CHECKBOX, "Check", wxDefaultPosition, wxDefaultSize, 0 );
    $item1->AddWindow( $item4, 0, wxALIGN_CENTER|wxALL, 5 );

    my( $item5 ) = Wx::CheckBox->new( $_[0], $main::ID_CHECKBOX, "Check", wxDefaultPosition, wxDefaultSize, 0 );
    $item1->AddWindow( $item5, 0, wxALIGN_CENTER|wxALL, 5 );

    $item0->Add( $item1, 0, wxALIGN_CENTER|wxALL, 5 );

    my( $item7 ) = Wx::StaticBox->new( $_[0], -1, "Buttons" );
    my( $item6 ) = Wx::StaticBoxSizer->new( $item7, wxVERTICAL );
    
    my( $item8 ) = Wx::Button->new( $_[0], $main::ID_BUTTON, "OK", wxDefaultPosition, wxDefaultSize, 0 );
    $item6->AddWindow( $item8, 0, wxALIGN_CENTER_VERTICAL|wxALL, 5 );

    my( $item9 ) = Wx::Button->new( $_[0], $main::ID_BUTTON, "OK", wxDefaultPosition, wxDefaultSize, 0 );
    $item6->AddWindow( $item9, 0, wxALIGN_CENTER|wxALL, 5 );

    my( $item10 ) = Wx::Button->new( $_[0], $main::ID_BUTTON, "OK", wxDefaultPosition, wxDefaultSize, 0 );
    $item6->AddWindow( $item10, 0, wxGROW|wxALIGN_CENTER_VERTICAL|wxALL, 5 );

    $item0->Add( $item6, 0, wxGROW|wxALIGN_CENTER_VERTICAL|wxALL, 5 );

    my( $set_size ) = @_ >= 3 ? $_[2] : 1;
    my( $call_fit ) = @_ >= 2 ? $_[1] : 1;
    if( $set_size == 1 ) {
         $_[0]->SetSizer( $item0 );
         
         if( $call_fit == 1 ) {
             $item0->SetSizeHints( $_[0] );
         }
    }
    
    $item0;
}

use vars qw($ID_NOTEBOOK); $ID_NOTEBOOK = 10003;
use vars qw($ID_LINE); $ID_LINE = 10004;

sub NotebookFunc {
    my( $item0 ) = Wx::BoxSizer->new( wxVERTICAL );
    
    my( $item2 ) = Wx::Notebook->new( $_[0], $main::ID_NOTEBOOK, wxDefaultPosition, [200,160], 0 );
    my( $item1 ) = $item2;
    if( Wx->VERSION < 0.21 ) {
        $item1 = Wx::NotebookSizer->new( $item2 );
    }
    
    my( $item3 ) = Wx::Panel->new( $item2, -1 );
    &main::PageOneFunc( $item3, 0 );
    $item2->AddPage( $item3, "Page 1" );

    my( $item4 ) = Wx::Panel->new( $item2, -1 );
    &main::PageTwoFunc( $item4, 0 );
    $item2->AddPage( $item4, "Page 2" );

    my( $item5 ) = Wx::Panel->new( $item2, -1 );
    $item2->AddPage( $item5, "Page 3" );

    $item0->Add( $item1, 0, wxALIGN_CENTER|wxALL, 5 );

    my( $item6 ) = Wx::StaticLine->new( $_[0], $main::ID_LINE, wxDefaultPosition, [20,-1], wxLI_HORIZONTAL );
    $item0->AddWindow( $item6, 0, wxGROW|wxALIGN_CENTER_VERTICAL|wxALL, 5 );

    my( $item7 ) = Wx::BoxSizer->new( wxHORIZONTAL );
    
    my( $item8 ) = Wx::Button->new( $_[0], wxID_OK, "OK", wxDefaultPosition, wxDefaultSize, 0 );
    $item8->SetDefault();
    $item7->AddWindow( $item8, 0, wxALIGN_CENTER|wxALL, 5 );

    my( $item9 ) = Wx::Button->new( $_[0], wxID_CANCEL, "Cancel", wxDefaultPosition, wxDefaultSize, 0 );
    $item7->AddWindow( $item9, 0, wxALIGN_CENTER|wxALL, 5 );

    $item0->Add( $item7, 0, wxALIGN_CENTER|wxLEFT|wxRIGHT|wxBOTTOM, 5 );

    my( $set_size ) = @_ >= 3 ? $_[2] : 1;
    my( $call_fit ) = @_ >= 2 ? $_[1] : 1;
    if( $set_size == 1 ) {
         $_[0]->SetSizer( $item0 );
         
         if( $call_fit == 1 ) {
             $item0->SetSizeHints( $_[0] );
         }
    }
    
    $item0;
}

# Menu bar functions


# Toolbar functions


# End of generated file
