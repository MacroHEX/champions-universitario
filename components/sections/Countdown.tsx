'use client'

import {useEffect, useState} from 'react';

const Countdown = () => {
  const [days, setDays] = useState(0)
  const [hours, setHours] = useState(0)
  const [minutes, setMinutes] = useState(0)
  const [seconds, setSeconds] = useState(0)

  useEffect(() => {
    const target = new Date("2024-09-16T18:00:00-04:00")

    const interval = setInterval(() => {
      const now = new Date()
      const difference = target.getTime() - now.getTime()

      const d = Math.floor(difference / (1000 * 60 * 60 * 24))
      setDays(d)

      const h = Math.floor(
        (difference % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)
      )
      setHours(h)

      const m = Math.floor((difference % (1000 * 60 * 60)) / (1000 * 60))
      setMinutes(m)

      const s = Math.floor((difference % (1000 * 60)) / 1000)
      setSeconds(s)
    }, 1000)


    return () => {
      clearInterval(interval)
    }
  }, [])


  return (
    <section className="w-full py-6 md:py-12 lg:py-24 bg-teal-800 text-white">
      <div className="container px-4 md:px-6">
        <h2 className="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl text-center mb-8">
          Faltan:
        </h2>
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4 max-w-2xl mx-auto">
          <div className="flex flex-col items-center justify-center bg-teal-700 rounded-lg p-4">
            <span className="text-3xl font-bold">{days}</span>
            <span className="text-sm">Días</span>
          </div>
          <div className="flex flex-col items-center justify-center bg-teal-700 rounded-lg p-4">
            <span className="text-3xl font-bold">{hours}</span>
            <span className="text-sm">Horas</span>
          </div>
          <div className="flex flex-col items-center justify-center bg-teal-700 rounded-lg p-4">
            <span className="text-3xl font-bold">{minutes}</span>
            <span className="text-sm">Minutos</span>
          </div>
          <div className="flex flex-col items-center justify-center bg-teal-700 rounded-lg p-4">
            <span className="text-3xl font-bold">{seconds}</span>
            <span className="text-sm">Segundos</span>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Countdown;