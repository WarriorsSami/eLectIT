package org.sami.electit.shared.middlewares;

import graphql.GraphQLError;
import graphql.GraphqlErrorBuilder;
import graphql.schema.DataFetchingEnvironment;
import org.jetbrains.annotations.NotNull;
import org.sami.electit.shared.domain.exceptions.DuplicateEntryException;
import org.sami.electit.shared.domain.exceptions.InvalidEntryDataException;
import org.sami.electit.shared.domain.exceptions.NoEntryFoundException;
import org.springframework.graphql.execution.DataFetcherExceptionResolverAdapter;
import org.springframework.graphql.execution.ErrorType;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.stereotype.Component;

@Component
public class GraphQLErrorHandlerMiddleware extends DataFetcherExceptionResolverAdapter {
    @Override
    protected GraphQLError resolveToSingleError(Throwable e, @NotNull DataFetchingEnvironment env) {
        var errorType = switch (e) {
            case DuplicateEntryException ignored -> ErrorType.BAD_REQUEST;
            case NoEntryFoundException ignored -> ErrorType.NOT_FOUND;
            case AccessDeniedException ignored -> ErrorType.UNAUTHORIZED;
            case InvalidEntryDataException ignored -> ErrorType.BAD_REQUEST;
            default -> ErrorType.INTERNAL_ERROR;
        };

        return GraphqlErrorBuilder.newError()
                .errorType(errorType)
                .message(e.getMessage())
                .path(env.getExecutionStepInfo().getPath())
                .location(env.getField().getSourceLocation())
                .build();
    }
}
