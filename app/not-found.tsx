import Link from 'next/link';

export default function NotFound() {
  return (
    <section className="py-10 bg-white">
      <div className="container mx-auto">
        <div className="row">
          <div className="col-sm-12">
            <div className="col-sm-10 col-sm-offset-1 text-center mx-auto">
              <div
                className="h-[400px] bg-center bg-no-repeat"
                style={{backgroundImage: 'url(https://cdn.dribbble.com/users/285475/screenshots/2083086/dribbble_1.gif)'}}
              >
                <h1 className="text-center text-[80px]">404</h1>
              </div>
              <div className="mt-[-50px]">
                <h3 className="text-4xl">Parece que te perdiste</h3>
                <p className="mt-4 text-lg">¡La página que buscar no se encuentra disponible!</p>
                <Link href="/" className="mt-6 inline-block px-5 py-3 bg-teal-200">
                  Vuelve al Inicio
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
