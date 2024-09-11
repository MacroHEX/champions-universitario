import {Table, TableBody, TableCaption, TableCell, TableHead, TableHeader, TableRow,} from "@/components/ui/table"
import {DefaultArgs, GetFindResult} from "@prisma/client/runtime/library";
import {Prisma} from "@prisma/client";

type Props = {
  data: GetFindResult<Prisma.$ModalityPayload<DefaultArgs>, Prisma.ModalityFindManyArgs<DefaultArgs>, object>[];
}

export function ModalidadesTable({data}: Props) {
  console.log(data[0].id);
  return (
    <Table>
      <TableCaption>Modalidades del Evento</TableCaption>
      <TableHeader>
        <TableRow>
          <TableHead>Nombre</TableHead>
        </TableRow>
      </TableHeader>
      <TableBody>
        {data.map((modalidad) => (
          <TableRow key={modalidad.id}>
            <TableCell>{modalidad.name}</TableCell>
          </TableRow>
        ))}
      </TableBody>
    </Table>
  )
}

export default ModalidadesTable;