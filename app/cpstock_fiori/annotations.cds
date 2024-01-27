using cpstoragelocationcreationrequest_srv as service from '../../srv/service';

annotate service.StockDetail with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: 'Material',
        Value: Material,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Plant',
        Value: Plant,
    },
    {
        $Type: 'UI.DataField',
        Label: '{@i18n>TotalForecastedStock}',
        Value: TotalForecastedStock,
    },
    {
        $Type: 'UI.DataField',
        Label: 'UploadedSafetyStock',
        Value: UploadedSafetyStock,
    },
    {
        $Type: 'UI.DataField',
        Label: 'TotalQuota',
        Value: TotalQuota,
    },
]);

annotate service.StockDetail with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Plant',
                Value: Plant,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Material',
                Value: Material,
            },
            {
                $Type: 'UI.DataField',
                Label: 'TotalForecastedStock',
                Value: TotalForecastedStock,
            },
            {
                $Type: 'UI.DataField',
                Label: 'UploadedSafetyStock',
                Value: UploadedSafetyStock,
            },
            {
                $Type: 'UI.DataField',
                Label: 'TotalQuota',
                Value: TotalQuota,
            },
            {
                $Type: 'UI.DataField',
                Label: 'ComputedField',
                Value: ComputedField,
            },
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);
