// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace MyALExtension.Item;
using Microsoft.Inventory.Item.Attribute;
using Microsoft.Inventory.Item;
using Microsoft.Inventory.Item.Catalog;

page 50113 "API Item"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'timothynguyen';
    APIGroup = 'prod';

    EntityCaption = 'Item';
    EntitySetCaption = 'Items';
    EntityName = 'Item';
    EntitySetName = 'Items';

    ODataKeyFields = SystemId;
    SourceTable = "Item";

    Extensible = true;
    DelayedInsert = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
                field("number"; Rec."No.")
                {
                    Caption = ' No.';
                }
                field("no"; Rec."No.")
                {
                    Caption = ' No.';
                }
                field("displayName"; Rec."Description")
                {
                    Caption = 'Description';
                }
            }
        }
    }
}
