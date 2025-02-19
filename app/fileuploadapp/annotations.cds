using { fileManagementSrv } from '../../srv/service.cds';

annotate fileManagementSrv.Files with @UI.DataPoint #filename: {
  Value: filename,
  Title: 'Filename',
};
annotate fileManagementSrv.Files with @UI.DataPoint #mediaType: {
  Value: mediaType,
  Title: 'Media Type',
};
annotate fileManagementSrv.Files with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#filename', ID: 'Filename' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#mediaType', ID: 'MediaType' }
];
annotate fileManagementSrv.Files with @UI.HeaderInfo: {
  TypeName: 'File',
  TypeNamePlural: 'Files',
  Title: { Value: fileId }
};
annotate fileManagementSrv.Files with {
  ID @UI.Hidden
};
annotate fileManagementSrv.Files with @UI.Identification: [{ Value: fileId }];
annotate fileManagementSrv.Files with {
  fileId @Common.Label: 'File Id';
  filename @Common.Label: 'Filename';
  mediaType @Common.Label: 'Media Type';
  fileContent @Common.Label: 'File Content'
};
annotate fileManagementSrv.Files with {
  ID @Common.Text: { $value: fileId, ![@UI.TextArrangement]: #TextOnly };
  mediaType @Common.Text : { $value: mediaType, ![@UI.TextArrangement]: #TextOnly };
};
annotate fileManagementSrv.Files with {
  mediaType @Common.ValueListWithFixedValues;
};
annotate fileManagementSrv.Files with @UI.SelectionFields: [
  fileId,
  mediaType
];
annotate fileManagementSrv.Files with @UI.LineItem : [
    { $Type: 'UI.DataField', Value: fileId },
    { $Type: 'UI.DataField', Value: filename },
    { $Type: 'UI.DataField', Value: mediaType }
];
annotate fileManagementSrv.Files with @UI.FieldGroup #fileDetailsSection: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: fileId },
    { $Type: 'UI.DataField', Value: filename },
    { $Type: 'UI.DataField', Value: mediaType },
    { $Type: 'UI.DataField', Value: fileContent }

  ]
};


annotate fileManagementSrv.Files with @UI.Facets: [
  {
    $Type: 'UI.CollectionFacet',
    ID: 'fileDataTab',
    Label: 'file Data',
    Facets: [
      { $Type: 'UI.ReferenceFacet', ID: 'fileDetailsSection', Label: 'file Details', Target: '@UI.FieldGroup#fileDetailsSection' } ]
  }
];