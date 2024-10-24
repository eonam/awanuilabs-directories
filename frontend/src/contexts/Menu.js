import { createContext, useContext, useEffect, useState } from 'react'

const Context = createContext()

export const useMenu = () => useContext(Context)

export default function MenuContext({ children }) {
  const [isMenuOpen, setMenuOpen] = useState(false)

  const contextValue = {
    isMenuOpen,
    setMenuOpen
  }

  useEffect(() => {
    setMenuOpen(window?.innerWidth <= 767)
  }, [])

  return (
    <Context.Provider value={contextValue}>
      {children}
    </Context.Provider>
  )
}
