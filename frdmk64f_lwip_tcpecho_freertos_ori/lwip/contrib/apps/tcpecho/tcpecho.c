/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */
#include "tcpecho.h"

#include "lwip/opt.h"
#include <string.h>

/*-----------------------------------------------------------------------------------*/
//modificacion: IP SERVIDOR AL CUAL SE VA A CONECTAR EL CLIENTE si es hercules se usa ip de cp y si es servidor se coloca ip de servidor

#define configServer_ADDR0 192
#define configServer_ADDR1 168
#define configServer_ADDR2 1
#define configServer_ADDR3 72
/*-----------------------------------------------------------------------------------*/
#if LWIP_NETCONN

#include "lwip/sys.h"
#include "lwip/api.h"
/*-----------------------------------------------------------------------------------*/
//MODIFICACION casi toda la funcion tcpecho_thread se modifico para implementar dhcp y la parte del cliente
static void
tcpecho_thread(void *arg)
{
  struct netconn *conn;     //se borra solo newcon *conn, *newconn
  err_t err;
  LWIP_UNUSED_ARG(arg);

  //ip4_addr_t netif_gw;                    //DIRECCION DE SERVIDOR A CONECTAR
  ip4_addr_t netif_ipaddr2;
  //IP4_ADDR(&netif_ipaddr, 0U, 0U, 0U, 0U);
  IP4_ADDR(&netif_ipaddr2, configServer_ADDR0, configServer_ADDR1, configServer_ADDR2, configServer_ADDR3);
  /* Create a new connection identifier. */
#if LWIP_IPV6
  conn = netconn_new(NETCONN_TCP_IPV6);
  netconn_bind(conn, IP6_ADDR_ANY, 7);
#else /* LWIP_IPV6 */
  //conn = netconn_new(NETCONN_TCP);                            //socket()
#endif /* LWIP_IPV6 */
  LWIP_ERROR("tcpecho: invalid conn", (conn != NULL), return;);




  while (1) {
	  struct netbuf *buf;
	       void *data;

	       u8_t mydato[]= {"hola"};
	       u16_t len=strlen(mydato);
    /* Grab new connection. */

	 conn = netconn_new(NETCONN_TCP);
	 err = netconn_connect(conn, &netif_ipaddr2, 7);


    data=(void*)mydato;



    err = netconn_write(conn,data,len,NETCONN_COPY);
        printf("cliente_enviando: %s\n",data);
        if (err == ERR_OK)                           //funcion para que espere a recibir si todo OK
        {
    err = netconn_recv(conn, &buf);

        netbuf_data(buf, &data, &len);
        printf("Servidor_recibiendo: %s\n",data);
    	}


        netbuf_delete(buf);
                                         //funcion para borrar buffer de memoria

      netconn_close(conn);
     netconn_delete(conn);
      vTaskDelay(20000);                     //retardo de 20 segundos


   }
  }
//}
/*-----------------------------------------------------------------------------------*/
void
tcpecho_init(void)
{
  sys_thread_new("tcpecho_thread", tcpecho_thread, NULL, DEFAULT_THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
}
/*-----------------------------------------------------------------------------------*/

#endif /* LWIP_NETCONN */
