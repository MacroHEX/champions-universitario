import {db} from './db';

type Modalidad = {
  id?: string;
  name: string;
}

export const listarModalidades = async () => {
  return db.modality.findMany();
}

export const agregarModadlidad = async (data: Modalidad) => {
  return db.modality.create({
    data: {
      ...data
    }
  })
}