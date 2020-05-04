using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Ejercicios;

namespace UnitTestProject
{
    [TestClass]
    public class Ejercicio1VueltaTest
    {
        [TestMethod]
        public void LoadTest()
        {
            //Arrange
            Ejercicio1_Vuelta ejercicio = new Ejercicio1_Vuelta();

            //Act
            string result = ejercicio.Calculate("Nieto", "27");

            //Assert
            Assert.AreEqual("Nieto su edad en meses es: 324", result);
        }

        [TestMethod]
        public void LoadWithError()
        {
            //Arrange
            Ejercicio1_Vuelta ejercicio = new Ejercicio1_Vuelta();

            //Act
            string result = ejercicio.Calculate("Nieto", "Texto");

            //Assert
            Assert.AreEqual("Ocurrio un error al procesar los datos enviados. Por favor intente nuevamente", result);
        }
    }
}
