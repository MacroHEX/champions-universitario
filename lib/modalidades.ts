import {db} from './db';

export const listarModalidades = async () => {
  return db.modality.findMany();
}