namespace fileManagement;

using {Attachments} from '@cap-js/attachments';

entity Files {
  key ID          : UUID;
      fileId      : String(50)  @assert.unique  @mandatory;
      filename    : String(255);
      mediaType   : String;
      fileContent : LargeBinary;
      attachments : Composition of many Attachments;
}
