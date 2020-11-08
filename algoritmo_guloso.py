import pymysql
   
class Produto():
    def __init__(self, nome, espaco, valor, razao):
        self.nome = nome
        self.espaco = espaco
        self.valor = valor
        self.razao = razao

if __name__ == '__main__':
    lista_produtos = []
    produtos_selecionados = []
    nomes_mostrados = []
    valores_mostrados = []
    quantidade_mostrada = []
    controle_valor = 0
    valor = 0
    espaco_ocupado = 0
    conexao = pymysql.connect(host='localhost', user='root', passwd='', db='produtos')
    cursor = conexao.cursor()
    cursor.execute('select nome, espaco, valor, quantidade from produtos')
    
    for produto in cursor:
        for i in range(produto[3]):
            razao = produto[2] / produto[1]
            lista_produtos.append(Produto(produto[0], produto[1], produto[2], razao))

    cursor.close()
    conexao.close()
    
    limite = 80
    lista_produtos.sort(key=lambda i: i.razao, reverse = True)
    
    for i in lista_produtos:
        if i.espaco < limite:
            produtos_selecionados.append(i)
            limite -= i.espaco
            espaco_ocupado += i.espaco
            valor += i.valor
        
    print('\nvalor final:', valor)
    print('espaco ocupado:', espaco_ocupado)
    
    quantidade = 0
    nome = produtos_selecionados[0].nome
    controle_valor = produtos_selecionados[0].valor
    
    for i in produtos_selecionados:
        if nome == i.nome:
            quantidade += 1
        else:
            nomes_mostrados.append(nome)
            valores_mostrados.append(controle_valor)
            quantidade_mostrada.append(quantidade)
            nome = i.nome
            quantidade = 1
            controle_valor = i.valor
    nomes_mostrados.append(nome)
    valores_mostrados.append(controle_valor)
    quantidade_mostrada.append(quantidade)
    
    print('\nQuantidades e produtos que foram selecionados:\n')
    for i in range(len(nomes_mostrados)):
        print("%s - %s R$%s " % (quantidade_mostrada[i], 
                                             nomes_mostrados[i], 
                                             valores_mostrados[i]))