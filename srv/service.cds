using { fileManagement } from '../db/schema.cds';

service fileManagementSrv {
  @odata.draft.enabled
  entity Files as projection on fileManagement.Files;
}