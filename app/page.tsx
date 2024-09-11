'use client'

import {useEffect, useState} from 'react'
import {ChevronUp} from "lucide-react"
import Hero from "@/components/sections/Hero";
import About from "@/components/sections/About";
import Modalidades from "@/components/sections/Modalidades";
import Countdown from "@/components/sections/Countdown";
import Header from "@/components/sections/Header";
import AreYouready from "@/components/sections/AreYouready";
import Footer from "@/components/sections/Footer";

export default function LandingPage() {

  const [showBackToTop, setShowBackToTop] = useState(false)
  useEffect(() => {
    const handleScroll = () => {
      setShowBackToTop(window.scrollY > 300)
    }

    window.addEventListener('scroll', handleScroll)

    return () => {
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

      <main className="flex-1">
        <Header/>
        <Hero/>
        <About/>
        <Modalidades/>
        <Countdown/>
        <AreYouready/>
      </main>

      <Footer/>

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