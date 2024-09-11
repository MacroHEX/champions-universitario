import {db} from './db';

export const ZTest = async () => {

  // await db.modality.create({
  //   data: {
  //     name: "Futsal Masculino"
  //   }
  // })
  // await db.modality.create({
  //   data: {
  //     name: "Futsal Femenino"
  //   }
  // })
  // await db.modality.create({
  //   data: {
  //     name: "Volleyball Mixto"
  //   }
  // })

  return db.modality.findMany()
}