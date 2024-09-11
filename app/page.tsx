'use client'

import React, {useEffect, useState} from 'react'
import {Calendar, ChevronUp, Trophy, Users} from "lucide-react"
import Link from "next/link"
import AboutCard from "@/components/cards/AboutCard";

export default function LandingPage() {
  const [days, setDays] = useState(0)
  const [hours, setHours] = useState(0)
  const [minutes, setMinutes] = useState(0)
  const [seconds, setSeconds] = useState(0)
  const [showBackToTop, setShowBackToTop] = useState(false)

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

    const handleScroll = () => {
      setShowBackToTop(window.scrollY > 300)
    }

    window.addEventListener('scroll', handleScroll)

    return () => {
      clearInterval(interval)
      window.removeEventListener('scroll', handleScroll)
    }
  }, [])

  const scrollToTop = () => {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    })
  }

  return (
    <div className="flex flex-col min-h-screen bg-slate-50">
      <header className="px-4 lg:px-6 h-14 flex items-center bg-white shadow-sm">
        <Link className="flex items-center justify-center" href="#">
          <Trophy className="h-6 w-6 text-teal-600"/>
          <span className="ml-2 text-xl font-semibold text-slate-800">Champions Universitario</span>
        </Link>
        <nav className="ml-auto flex gap-4 sm:gap-6">
          <Link className="text-sm font-medium text-slate-600 hover:text-teal-600 transition-colors" href="#about">
            Acerca
          </Link>
          <Link className="text-sm font-medium text-slate-600 hover:text-teal-600 transition-colors" href="#sports">
            Modalidades
          </Link>
        </nav>
      </header>
      <main className="flex-1">
        <section className="w-full py-6 md:py-12 lg:py-24 xl:py-32 bg-teal-50">
          <div className="container px-4 md:px-6">
            <div className="flex flex-col items-center space-y-4 text-center">
              <div className="space-y-2">
                <h1
                  className="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl lg:text-6xl/none text-slate-900">
                  Champions Universitario 2024
                </h1>
                <p className="mx-auto max-w-[700px] text-slate-700 md:text-xl">
                  Únete a nosotros en un emocionante evento juvenil de primavera que incluye torneos de fútbol y
                  voleibol. Demuestra tus habilidades, compite con tus compañeros y celebra el espíritu universitario.
                </p>
              </div>
            </div>
          </div>
        </section>
        <section id="about" className="w-full py-6 md:py-12 lg:py-24 bg-white">
          <div className="container px-4 md:px-6">
            <h2 className="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl text-center mb-8 text-slate-900">
              Acerca del Evento
            </h2>
            <div className="grid gap-10 sm:grid-cols-2 md:grid-cols-3">
              <AboutCard
                logo={<Calendar className="h-8 w-8 text-purple-500"/>}
                title='Inauguración'
                description='Empezamos el 16 de Septiembre a las 18:00'/>
              <AboutCard
                logo={<Trophy className="h-8 w-8 text-yellow-500"/>}
                title='Torneo'
                description='Torneo de Futsal y Volley'/>
              <AboutCard
                logo={<Users className="h-8 w-8 text-blue-500"/>}
                title='Participantes'
                description='Estudiantes de la Universidad'/>
            </div>
          </div>
        </section>
        <section id="sports" className="w-full py-6 md:py-12 lg:py-24 bg-slate-100">
          <div className="container px-4 md:px-6">
            <h2 className="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl text-center mb-8 text-slate-900">
              Modalidades
            </h2>
            <div className="grid gap-10 sm:grid-cols-2 md:grid-cols-3">
              <div className="flex flex-col items-center space-y-2 border-slate-200 p-4 rounded-lg bg-white shadow-sm">
                <h3 className="text-2xl font-bold text-teal-600">Futsal (Masculino)</h3>
                <p className="text-center text-slate-600">Fase de grupos seguida de eliminatorias</p>
              </div>
              <div className="flex flex-col items-center space-y-2 border-slate-200 p-4 rounded-lg bg-white shadow-sm">
                <h3 className="text-2xl font-bold text-teal-600">Futsal (Femenino)</h3>
                <p className="text-center text-slate-600">Fase de grupos seguida de eliminatorias</p>
              </div>
              <div className="flex flex-col items-center space-y-2 border-slate-200 p-4 rounded-lg bg-white shadow-sm">
                <h3 className="text-2xl font-bold text-teal-600">Volleyball (Mixto)</h3>
                <p className="text-center text-slate-600">Fase de grupos seguida de eliminatorias</p>
              </div>
            </div>
          </div>
        </section>
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
        <section id="register" className="w-full py-6 md:py-12 lg:py-24 bg-teal-50">
          <div className="container px-4 md:px-6">
            <div className="flex flex-col items-center space-y-4 text-center">
              <div className="space-y-2">
                <h2 className="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl text-slate-900">
                  ¿Estás listo para la competencia?
                </h2>
              </div>
            </div>
          </div>
        </section>
      </main>
      <footer
        className="flex flex-col gap-2 sm:flex-row py-6 w-full shrink-0 items-center px-4 md:px-6 border-t bg-white">
        <p className="text-xs text-slate-500">© 2024 Champions Universitario. All rights reserved.</p>
        <nav className="sm:ml-auto flex gap-4 sm:gap-6">
          <Link className="text-xs text-slate-500 hover:underline underline-offset-4" href="#">
            Terms of Service
          </Link>
          <Link className="text-xs text-slate-500 hover:underline underline-offset-4" href="#">
            Privacy
          </Link>
        </nav>
      </footer>
      {showBackToTop && (
        <button
          onClick={scrollToTop}
          className="fixed bottom-4 right-4 p-2 bg-teal-600 text-white rounded-full shadow-lg transition-all duration-300 ease-in-out hover:bg-teal-700 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:ring-opacity-50"
          aria-label="Back to top"
        >
          <ChevronUp className="h-6 w-6"/>
        </button>
      )}
    </div>
  )
}