import React from 'react';

import {listarModalidades} from "@/lib/modalidades";
import ModalidadesTable from "@/components/tables/ModalidadesTable";
import {DefaultArgs, GetFindResult} from '@prisma/client/runtime/library';
import {Prisma} from '@prisma/client';

const Page = async () => {

  const modalidades: GetFindResult<Prisma.$ModalityPayload<DefaultArgs>, Prisma.ModalityFindManyArgs<DefaultArgs>, object>[] = await listarModalidades();

  return (
    <div className="container mx-auto p-4">
      <ModalidadesTable data={modalidades}/>
    </div>
  );
};

export default Page;