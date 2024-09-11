import React, {ReactNode} from 'react';

interface Props {
  logo: ReactNode;
  title: string;
  description: string;
}

const AboutCard = ({logo, title, description}: Props) => {
  return (
    <div className="flex flex-col items-center space-y-2 border-slate-200 p-4 rounded-lg bg-slate-50 shadow-sm">
      {logo}
      <h3 className="text-xl font-bold text-slate-900">{title}</h3>
      <p className="text-center text-slate-600">{description}</p>
    </div>
  );
};

export default AboutCard;