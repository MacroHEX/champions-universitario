import React, {ReactNode} from 'react';
import Link from 'next/link';

interface Props {
  logo: ReactNode;
  title: string;
  slug: string;
}

const DashboardCard = ({logo, title, slug}: Props) => {
  return (
    <Link
      className="flex flex-col items-center space-y-2 border-slate-200 p-4 rounded-lg bg-slate-50 shadow-sm hover:bg-slate-100 cursor-pointer"
      href={`/dashboard/${slug}`}>
      {logo}
      <h3 className="text-xl font-bold text-slate-900">{title}</h3>
    </Link>
  );
};

export default DashboardCard;